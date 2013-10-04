	.file	"Tone.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text._Z4tonehjm,"ax",@progbits
.global	_Z4tonehjm
	.type	_Z4tonehjm, @function
_Z4tonehjm:
	ldi r26,lo8(4)
	ldi r27,0
	ldi r30,lo8(gs(1f))
	ldi r31,hi8(gs(1f))
	jmp __prologue_saves__+((18 - 17) * 2)
1:
/* prologue: function */
/* frame size = 4 */
/* stack size = 21 */
.L__stack_usage = 21
	movw r16,r22
	movw r4,r18
	movw r6,r20
	lds r25,_ZL9tone_pins
	cp r25,r24
	breq .L2
	cpi r25,lo8(-1)
	breq .+2
	rjmp .L1
	rjmp .L3
.L2:
	ldi r30,lo8(_ZL21tone_pin_to_timer_PGM)
	ldi r31,hi8(_ZL21tone_pin_to_timer_PGM)
/* #APP */
 ;  133 "/usr/share/arduino/hardware/arduino/cores/arduino/Tone.cpp" 1
	lpm r3, Z
	
 ;  0 "" 2
/* #NOAPP */
	rjmp .L5
.L3:
	sts _ZL9tone_pins,r24
	ldi r30,lo8(_ZL21tone_pin_to_timer_PGM)
	ldi r31,hi8(_ZL21tone_pin_to_timer_PGM)
/* #APP */
 ;  141 "/usr/share/arduino/hardware/arduino/cores/arduino/Tone.cpp" 1
	lpm r3, Z
	
 ;  0 "" 2
/* #NOAPP */
	ldi r25,lo8(-1)
	cp r3,r25
	brne .+2
	rjmp .L1
	ldi r30,lo8(1)
	cp r3,r30
	breq .L7
	ldi r31,lo8(2)
	cp r3,r31
	brne .+2
	rjmp .L8
	cpse r3,__zero_reg__
	rjmp .L5
	out 0x24,__zero_reg__
	out 0x25,__zero_reg__
	in r25,0x24
	ori r25,lo8(2)
	out 0x24,r25
	in r25,0x25
	ori r25,lo8(1)
	out 0x25,r25
	mov r18,r24
	ldi r19,0
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_port_PGM))
	sbci r31,hi8(-(digital_pin_to_port_PGM))
/* #APP */
 ;  161 "/usr/share/arduino/hardware/arduino/cores/arduino/Tone.cpp" 1
	lpm r30, Z
	
 ;  0 "" 2
/* #NOAPP */
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(port_to_output_PGM))
	sbci r31,hi8(-(port_to_output_PGM))
/* #APP */
 ;  161 "/usr/share/arduino/hardware/arduino/cores/arduino/Tone.cpp" 1
	lpm r20, Z+
	lpm r21, Z
	
 ;  0 "" 2
/* #NOAPP */
	sts timer0_pin_port,r20
	sts timer0_pin_port+1,r21
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r31,hi8(-(digital_pin_to_bit_mask_PGM))
/* #APP */
 ;  162 "/usr/share/arduino/hardware/arduino/cores/arduino/Tone.cpp" 1
	lpm r18, Z
	
 ;  0 "" 2
/* #NOAPP */
	sts timer0_pin_mask,r18
	rjmp .L26
.L7:
	sts 128,__zero_reg__
	sts 129,__zero_reg__
	lds r25,129
	ori r25,lo8(8)
	sts 129,r25
	lds r25,129
	ori r25,lo8(1)
	sts 129,r25
	mov r18,r24
	ldi r19,0
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_port_PGM))
	sbci r31,hi8(-(digital_pin_to_port_PGM))
/* #APP */
 ;  173 "/usr/share/arduino/hardware/arduino/cores/arduino/Tone.cpp" 1
	lpm r30, Z
	
 ;  0 "" 2
/* #NOAPP */
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(port_to_output_PGM))
	sbci r31,hi8(-(port_to_output_PGM))
/* #APP */
 ;  173 "/usr/share/arduino/hardware/arduino/cores/arduino/Tone.cpp" 1
	lpm r20, Z+
	lpm r21, Z
	
 ;  0 "" 2
/* #NOAPP */
	sts timer1_pin_port,r20
	sts timer1_pin_port+1,r21
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r31,hi8(-(digital_pin_to_bit_mask_PGM))
/* #APP */
 ;  174 "/usr/share/arduino/hardware/arduino/cores/arduino/Tone.cpp" 1
	lpm r18, Z
	
 ;  0 "" 2
/* #NOAPP */
	sts timer1_pin_mask,r18
	rjmp .L26
.L8:
	sts 176,__zero_reg__
	sts 177,__zero_reg__
	lds r25,176
	ori r25,lo8(2)
	sts 176,r25
	lds r25,177
	ori r25,lo8(1)
	sts 177,r25
	mov r18,r24
	ldi r19,0
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_port_PGM))
	sbci r31,hi8(-(digital_pin_to_port_PGM))
/* #APP */
 ;  185 "/usr/share/arduino/hardware/arduino/cores/arduino/Tone.cpp" 1
	lpm r30, Z
	
 ;  0 "" 2
/* #NOAPP */
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(port_to_output_PGM))
	sbci r31,hi8(-(port_to_output_PGM))
/* #APP */
 ;  185 "/usr/share/arduino/hardware/arduino/cores/arduino/Tone.cpp" 1
	lpm r20, Z+
	lpm r21, Z
	
 ;  0 "" 2
/* #NOAPP */
	sts timer2_pin_port,r20
	sts timer2_pin_port+1,r21
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r31,hi8(-(digital_pin_to_bit_mask_PGM))
/* #APP */
 ;  186 "/usr/share/arduino/hardware/arduino/cores/arduino/Tone.cpp" 1
	lpm r18, Z
	
 ;  0 "" 2
/* #NOAPP */
	sts timer2_pin_mask,r18
	rjmp .L26
.L5:
	sbrc r3,7
	rjmp .L1
.L26:
	ldi r22,lo8(1)
	call pinMode
	movw r8,r16
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	ldi r22,0
	ldi r23,lo8(18)
	ldi r24,lo8(122)
	ldi r25,0
	movw r20,r10
	movw r18,r8
	call __divmodsi4
	tst r3
	breq .L11
	ldi r24,lo8(2)
	cpse r3,r24
	rjmp .L12
.L11:
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	movw r12,r18
	movw r14,r20
	ldi r25,1
	sub r12,r25
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	ldi r30,-1
	cp r12,r30
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+2
	brsh .+2
	rjmp .L27
	ldi r22,lo8(64)
	ldi r23,lo8(66)
	ldi r24,lo8(15)
	ldi r25,0
	movw r20,r10
	movw r18,r8
	call __divmodsi4
	movw r12,r18
	movw r14,r20
	ldi r31,1
	sub r12,r31
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	ldi r24,lo8(2)
	cpse r3,r24
	rjmp .L28
	ldi r25,-1
	cp r12,r25
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+2
	brsh .+2
	rjmp .L29
	ldi r22,lo8(-112)
	ldi r23,lo8(-48)
	ldi r24,lo8(3)
	ldi r25,0
	movw r20,r10
	movw r18,r8
	call __divmodsi4
	movw r12,r18
	movw r14,r20
	ldi r30,1
	sub r12,r30
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	ldi r24,lo8(3)
	rjmp .L14
.L28:
	ldi r24,lo8(2)
.L14:
	ldi r31,-1
	cp r12,r31
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+2
	brsh .+2
	rjmp .L13
	ldi r22,lo8(72)
	ldi r23,lo8(-24)
	ldi r24,lo8(1)
	ldi r25,0
	movw r20,r10
	movw r18,r8
	call __divmodsi4
	movw r12,r18
	movw r14,r20
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	tst r3
	breq .L30
	ldi r25,lo8(2)
	cpse r3,r25
	rjmp .L31
	ldi r30,-1
	cp r12,r30
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .+2
	brsh .+2
	rjmp .L32
	ldi r22,lo8(36)
	ldi r23,lo8(-12)
	ldi r24,0
	ldi r25,0
	movw r20,r10
	movw r18,r8
	call __divmodsi4
	movw r12,r18
	movw r14,r20
	ldi r31,1
	sub r12,r31
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	ldi r24,lo8(5)
	rjmp .L16
.L30:
	ldi r24,lo8(3)
	rjmp .L16
.L31:
	ldi r24,lo8(4)
.L16:
	ldi r25,-1
	cp r12,r25
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L13
	brlo .L13
	ldi r22,lo8(18)
	ldi r23,lo8(122)
	ldi r24,0
	ldi r25,0
	movw r20,r10
	movw r18,r8
	call __divmodsi4
	movw r12,r18
	movw r14,r20
	ldi r30,1
	sub r12,r30
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	cpse r3,__zero_reg__
	rjmp .L33
	ldi r24,lo8(4)
	rjmp .L17
.L33:
	ldi r24,lo8(6)
.L17:
	ldi r31,-1
	cp r12,r31
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	breq .L13
	brlo .L13
	ldd r12,Y+1
	ldd r13,Y+2
	ldd r14,Y+3
	ldd r15,Y+4
	ldi r25,10
	1:
	asr r15
	ror r14
	ror r13
	ror r12
	dec r25
	brne 1b
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	tst r3
	breq .L34
	ldi r24,lo8(7)
	rjmp .L19
.L27:
	ldi r24,lo8(1)
.L13:
	tst r3
	breq .L18
	rjmp .L19
.L34:
	ldi r24,lo8(5)
.L18:
	out 0x25,r24
	rjmp .L20
.L19:
	sts 177,r24
	rjmp .L20
.L12:
	movw r12,r18
	movw r14,r20
	ldi r25,1
	sub r12,r25
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	ldi r30,1
	cpc r14,r30
	cpc r15,__zero_reg__
	brlo .L35
	ldi r22,lo8(72)
	ldi r23,lo8(-24)
	ldi r24,lo8(1)
	ldi r25,0
	movw r20,r10
	movw r18,r8
	call __divmodsi4
	movw r12,r18
	movw r14,r20
	ldi r31,1
	sub r12,r31
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	ldi r25,lo8(3)
	rjmp .L21
.L35:
	ldi r25,lo8(1)
.L21:
	ldi r24,lo8(1)
	cpse r3,r24
	rjmp .L20
	lds r24,129
	andi r24,lo8(-8)
	or r24,r25
	sts 129,r24
.L20:
	cp r4,__zero_reg__
	cpc r5,__zero_reg__
	cpc r6,__zero_reg__
	cpc r7,__zero_reg__
	breq .L36
	movw r26,r16
	lsl r26
	rol r27
	movw r20,r6
	movw r18,r4
	call __muluhisi3
	ldi r18,lo8(-24)
	ldi r19,lo8(3)
	ldi r20,0
	ldi r21,0
	call __udivmodsi4
	rjmp .L22
.L36:
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
	movw r20,r18
.L22:
	ldi r25,lo8(1)
	cp r3,r25
	breq .L24
	ldi r30,lo8(2)
	cp r3,r30
	breq .L25
	cpse r3,__zero_reg__
	rjmp .L1
	out 0x27,r12
	sts timer0_toggle_count,r18
	sts timer0_toggle_count+1,r19
	sts timer0_toggle_count+2,r20
	sts timer0_toggle_count+3,r21
	lds r24,110
	ori r24,lo8(2)
	sts 110,r24
	rjmp .L1
.L24:
	sts 136+1,r13
	sts 136,r12
	sts timer1_toggle_count,r18
	sts timer1_toggle_count+1,r19
	sts timer1_toggle_count+2,r20
	sts timer1_toggle_count+3,r21
	lds r24,111
	ori r24,lo8(2)
	sts 111,r24
	rjmp .L1
.L25:
	sts 179,r12
	sts timer2_toggle_count,r18
	sts timer2_toggle_count+1,r19
	sts timer2_toggle_count+2,r20
	sts timer2_toggle_count+3,r21
	lds r24,112
	ori r24,lo8(2)
	sts 112,r24
	rjmp .L1
.L29:
	ldi r24,lo8(2)
	rjmp .L19
.L32:
	ldi r24,lo8(4)
	rjmp .L19
.L1:
/* epilogue start */
	adiw r28,4
	ldi r30, lo8(17)
	jmp __epilogue_restores__ + ((18 - 17) * 2)
	.size	_Z4tonehjm, .-_Z4tonehjm
	.section	.text._Z12disableTimerh,"ax",@progbits
.global	_Z12disableTimerh
	.type	_Z12disableTimerh, @function
_Z12disableTimerh:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cpi r24,lo8(1)
	breq .L46
	brlo .L45
	cpi r24,lo8(2)
	brne .L43
	rjmp .L47
.L45:
	sts 110,__zero_reg__
	ret
.L46:
	lds r24,111
	andi r24,lo8(-3)
	sts 111,r24
	ret
.L47:
	lds r24,112
	andi r24,lo8(-3)
	sts 112,r24
	ldi r24,lo8(1)
	sts 176,r24
	lds r24,177
	andi r24,lo8(-8)
	ori r24,lo8(4)
	sts 177,r24
	sts 179,__zero_reg__
.L43:
	ret
	.size	_Z12disableTimerh, .-_Z12disableTimerh
	.section	.text._Z6noToneh,"ax",@progbits
.global	_Z6noToneh
	.type	_Z6noToneh, @function
_Z6noToneh:
	push r28
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r24
	lds r24,_ZL9tone_pins
	cpse r24,r28
	rjmp .L50
	ldi r30,lo8(_ZL21tone_pin_to_timer_PGM)
	ldi r31,hi8(_ZL21tone_pin_to_timer_PGM)
/* #APP */
 ;  484 "/usr/share/arduino/hardware/arduino/cores/arduino/Tone.cpp" 1
	lpm r24, Z
	
 ;  0 "" 2
/* #NOAPP */
	ldi r25,lo8(-1)
	sts _ZL9tone_pins,r25
	rjmp .L49
.L50:
	ldi r24,lo8(-1)
.L49:
	call _Z12disableTimerh
	ldi r22,0
	mov r24,r28
	call digitalWrite
/* epilogue start */
	pop r28
	ret
	.size	_Z6noToneh, .-_Z6noToneh
	.section	.text.__vector_7,"ax",@progbits
.global	__vector_7
	.type	__vector_7, @function
__vector_7:
	push r1
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
	push r19
	push r20
	push r21
	push r22
	push r23
	push r24
	push r25
	push r26
	push r27
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	lds r24,timer2_toggle_count
	lds r25,timer2_toggle_count+1
	lds r26,timer2_toggle_count+2
	lds r27,timer2_toggle_count+3
	or r24,r25
	or r24,r26
	or r24,r27
	breq .L52
	lds r25,timer2_pin_mask
	lds r30,timer2_pin_port
	lds r31,timer2_pin_port+1
	ld r24,Z
	eor r24,r25
	st Z,r24
	lds r24,timer2_toggle_count
	lds r25,timer2_toggle_count+1
	lds r26,timer2_toggle_count+2
	lds r27,timer2_toggle_count+3
	cp __zero_reg__,r24
	cpc __zero_reg__,r25
	cpc __zero_reg__,r26
	cpc __zero_reg__,r27
	brge .L51
	lds r24,timer2_toggle_count
	lds r25,timer2_toggle_count+1
	lds r26,timer2_toggle_count+2
	lds r27,timer2_toggle_count+3
	sbiw r24,1
	sbc r26,__zero_reg__
	sbc r27,__zero_reg__
	sts timer2_toggle_count,r24
	sts timer2_toggle_count+1,r25
	sts timer2_toggle_count+2,r26
	sts timer2_toggle_count+3,r27
	rjmp .L51
.L52:
	lds r24,_ZL9tone_pins
	call _Z6noToneh
.L51:
/* epilogue start */
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.size	__vector_7, .-__vector_7
.global	timer2_pin_mask
	.section	.bss.timer2_pin_mask,"aw",@nobits
	.type	timer2_pin_mask, @object
	.size	timer2_pin_mask, 1
timer2_pin_mask:
	.zero	1
.global	timer2_pin_port
	.section	.bss.timer2_pin_port,"aw",@nobits
	.type	timer2_pin_port, @object
	.size	timer2_pin_port, 2
timer2_pin_port:
	.zero	2
.global	timer2_toggle_count
	.section	.bss.timer2_toggle_count,"aw",@nobits
	.type	timer2_toggle_count, @object
	.size	timer2_toggle_count, 4
timer2_toggle_count:
	.zero	4
.global	timer1_pin_mask
	.section	.bss.timer1_pin_mask,"aw",@nobits
	.type	timer1_pin_mask, @object
	.size	timer1_pin_mask, 1
timer1_pin_mask:
	.zero	1
.global	timer1_pin_port
	.section	.bss.timer1_pin_port,"aw",@nobits
	.type	timer1_pin_port, @object
	.size	timer1_pin_port, 2
timer1_pin_port:
	.zero	2
.global	timer1_toggle_count
	.section	.bss.timer1_toggle_count,"aw",@nobits
	.type	timer1_toggle_count, @object
	.size	timer1_toggle_count, 4
timer1_toggle_count:
	.zero	4
.global	timer0_pin_mask
	.section	.bss.timer0_pin_mask,"aw",@nobits
	.type	timer0_pin_mask, @object
	.size	timer0_pin_mask, 1
timer0_pin_mask:
	.zero	1
.global	timer0_pin_port
	.section	.bss.timer0_pin_port,"aw",@nobits
	.type	timer0_pin_port, @object
	.size	timer0_pin_port, 2
timer0_pin_port:
	.zero	2
.global	timer0_toggle_count
	.section	.bss.timer0_toggle_count,"aw",@nobits
	.type	timer0_toggle_count, @object
	.size	timer0_toggle_count, 4
timer0_toggle_count:
	.zero	4
	.section	.data._ZL9tone_pins,"aw",@progbits
	.type	_ZL9tone_pins, @object
	.size	_ZL9tone_pins, 1
_ZL9tone_pins:
	.byte	-1
	.section	.progmem.data._ZL21tone_pin_to_timer_PGM,"a",@progbits
	.type	_ZL21tone_pin_to_timer_PGM, @object
	.size	_ZL21tone_pin_to_timer_PGM, 1
_ZL21tone_pin_to_timer_PGM:
	.byte	2
	.ident	"GCC: (GNU) 4.7.2"
.global __do_copy_data
.global __do_clear_bss
