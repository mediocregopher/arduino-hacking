int16_t       capture[FFT_N];    // Audio capture buffer
complex_t     bfly_buff[FFT_N];  // FFT "butterfly" buffer
uint16_t      spectrum[FFT_N/2]; // Spectrum output buffer
volatile byte samplePos = 0;     // Buffer position counter


// Tell the CPU to run the ISR(ADC_vect) function (below) until enough samples
// have been collected to fill up the whole capture[] array. Then, process the
// capture[] array into the spectrum[] array.
void capture_and_process_audio() {
  // Sample some audio
  ADCSRA |= _BV(ADIE);             // Resume sampling interrupt
  while(ADCSRA & _BV(ADIE));       // Wait for audio sampling to finish

  // Process the sample
  fft_input(capture, bfly_buff);   // Samples -> complex #s
  samplePos = 0;                   // Reset sample counter
  fft_execute(bfly_buff);          // Process complex data
  fft_output(bfly_buff, spectrum); // Complex -> spectrum

}

// Configure the CPU to automatically grab audio samples whenever we say so.
// After this function runs, the CPU will start collecting audio samples
// whenever the following is called:
// 
//     ADCSRA |= _BV(ADIE);             // Resume sampling interrupt
void initialize_fft() {
  // Init ADC free-run mode; f = ( 16MHz/prescaler ) / 13 cycles/conversion 
  ADMUX  = ADC_CHANNEL; // Channel sel, right-adj, use AREF pin
  ADCSRA = _BV(ADEN)  | // ADC enable
           _BV(ADSC)  | // ADC start
           _BV(ADATE) | // Auto trigger
           _BV(ADIE)  | // Interrupt enable
           _BV(ADPS2) | _BV(ADPS1); // | _BV(ADPS0); // 128:1 / 13 = 9615 Hz
  ADCSRB = 0;                // Free run mode, no high MUX bit
  DIDR0  = 1 << ADC_CHANNEL; // Turn off digital input for ADC pin
  TIMSK0 = 0;                // Timer0 off

  sei(); // Enable interrupts
}

// The CPU will run this little block of code very frequently to fill up the
// capture[] array. The capture[] array will later be processed into the
// spectrum[] array.
ISR(ADC_vect) {
  static const int16_t noiseThreshold = 4;
  int16_t              sample         = ADC; // 0-1023
  
  // This is a custom offset required by the breadboard circuit used at the
  // hackathon. This value is related to the uneven voltage divider with 110K
  // of resistance on one side and 100K on the other.
  sample += 45;

  capture[samplePos] =
    ((sample > (512-noiseThreshold)) &&
     (sample < (512+noiseThreshold))) ? 0 :
    sample - 512; // Sign-convert for FFT; -512 to +511

  if(++samplePos >= FFT_N) ADCSRA &= ~_BV(ADIE); // Buffer full, interrupt off
}
