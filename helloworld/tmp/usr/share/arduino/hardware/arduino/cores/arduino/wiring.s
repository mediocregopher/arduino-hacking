	.file	"wiring.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.__vector_16,"ax",@progbits
.global	__vector_16
	.type	__vector_16, @function
__vector_16:
	push r1
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
	push r19
	push r24
	push r25
	push r26
	push r27
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	lds r24,timer0_millis
	lds r25,timer0_millis+1
	lds r26,timer0_millis+2
	lds r27,timer0_millis+3
	lds r19,timer0_fract
	mov r18,r19
	subi r18,lo8(-(3))
	cpi r18,lo8(125)
	brsh .L2
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	rjmp .L3
.L2:
	mov r18,r19
	subi r18,lo8(-(-122))
	adiw r24,2
	adc r26,__zero_reg__
	adc r27,__zero_reg__
.L3:
	sts timer0_fract,r18
	sts timer0_millis,r24
	sts timer0_millis+1,r25
	sts timer0_millis+2,r26
	sts timer0_millis+3,r27
	lds r24,timer0_overflow_count
	lds r25,timer0_overflow_count+1
	lds r26,timer0_overflow_count+2
	lds r27,timer0_overflow_count+3
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	sts timer0_overflow_count,r24
	sts timer0_overflow_count+1,r25
	sts timer0_overflow_count+2,r26
	sts timer0_overflow_count+3,r27
/* epilogue start */
	pop r27
	pop r26
	pop r25
	pop r24
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.size	__vector_16, .-__vector_16
	.section	.text.millis,"ax",@progbits
.global	millis
	.type	millis, @function
millis:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	in r24,__SREG__
/* #APP */
 ;  74 "/usr/share/arduino/hardware/arduino/cores/arduino/wiring.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r16,timer0_millis
	lds r17,timer0_millis+1
	lds r18,timer0_millis+2
	lds r19,timer0_millis+3
	out __SREG__,r24
	movw r22,r16
	movw r24,r18
/* epilogue start */
	pop r17
	pop r16
	ret
	.size	millis, .-millis
	.section	.text.micros,"ax",@progbits
.global	micros
	.type	micros, @function
micros:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	in r25,__SREG__
/* #APP */
 ;  85 "/usr/share/arduino/hardware/arduino/cores/arduino/wiring.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	lds r16,timer0_overflow_count
	lds r17,timer0_overflow_count+1
	lds r18,timer0_overflow_count+2
	lds r19,timer0_overflow_count+3
	in r24,0x26
	sbis 0x15,0
	rjmp .L6
	cpi r24,lo8(-1)
	breq .L6
	subi r16,-1
	sbci r17,-1
	sbci r18,-1
	sbci r19,-1
.L6:
	out __SREG__,r25
	mov r19,r18
	mov r18,r17
	mov r17,r16
	clr r16
	add r16,r24
	adc r17,__zero_reg__
	adc r18,__zero_reg__
	adc r19,__zero_reg__
	ldi r20,2
	1:
	lsl r16
	rol r17
	rol r18
	rol r19
	dec r20
	brne 1b
	movw r22,r16
	movw r24,r18
/* epilogue start */
	pop r17
	pop r16
	ret
	.size	micros, .-micros
	.section	.text.delay,"ax",@progbits
.global	delay
	.type	delay, @function
delay:
	push r12
	push r13
	push r14
	push r15
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r12,r22
	movw r14,r24
	call micros
	movw r28,r22
	rjmp .L19
.L16:
	call micros
	sub r22,r28
	sbc r23,r29
	cpi r22,-24
	sbci r23,3
	brlo .L19
	ldi r24,1
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	subi r28,24
	sbci r29,-4
.L19:
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	brne .L16
/* epilogue start */
	pop r29
	pop r28
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	delay, .-delay
	.section	.text.delayMicroseconds,"ax",@progbits
.global	delayMicroseconds
	.type	delayMicroseconds, @function
delayMicroseconds:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sbiw r24,1
	breq .L20
	lsl r24
	rol r25
	lsl r24
	rol r25
	sbiw r24,2
/* #APP */
 ;  183 "/usr/share/arduino/hardware/arduino/cores/arduino/wiring.c" 1
	1: sbiw r24,1
	brne 1b
 ;  0 "" 2
/* #NOAPP */
.L20:
	ret
	.size	delayMicroseconds, .-delayMicroseconds
	.section	.text.init,"ax",@progbits
.global	init
	.type	init, @function
init:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* #APP */
 ;  193 "/usr/share/arduino/hardware/arduino/cores/arduino/wiring.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	in r24,0x24
	ori r24,lo8(2)
	out 0x24,r24
	in r24,0x24
	ori r24,lo8(1)
	out 0x24,r24
	in r24,0x25
	ori r24,lo8(2)
	out 0x25,r24
	in r24,0x25
	ori r24,lo8(1)
	out 0x25,r24
	ldi r30,lo8(110)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	ldi r30,lo8(-127)
	ldi r31,0
	st Z,__zero_reg__
	ld r24,Z
	ori r24,lo8(2)
	st Z,r24
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	ldi r30,lo8(-128)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	ldi r30,lo8(-79)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(4)
	st Z,r24
	ldi r30,lo8(-80)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	ldi r30,lo8(122)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(4)
	st Z,r24
	ld r24,Z
	ori r24,lo8(2)
	st Z,r24
	ld r24,Z
	ori r24,lo8(1)
	st Z,r24
	ld r24,Z
	ori r24,lo8(-128)
	st Z,r24
	sts 193,__zero_reg__
	ret
	.size	init, .-init
.global	timer0_millis
	.section	.bss.timer0_millis,"aw",@nobits
	.type	timer0_millis, @object
	.size	timer0_millis, 4
timer0_millis:
	.zero	4
.global	timer0_overflow_count
	.section	.bss.timer0_overflow_count,"aw",@nobits
	.type	timer0_overflow_count, @object
	.size	timer0_overflow_count, 4
timer0_overflow_count:
	.zero	4
	.section	.bss.timer0_fract,"aw",@nobits
	.type	timer0_fract, @object
	.size	timer0_fract, 1
timer0_fract:
	.zero	1
	.ident	"GCC: (GNU) 4.7.2"
.global __do_clear_bss
