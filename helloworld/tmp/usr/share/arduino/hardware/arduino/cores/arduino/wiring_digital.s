	.file	"wiring_digital.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.turnOffPWM,"ax",@progbits
	.type	turnOffPWM, @function
turnOffPWM:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cpi r24,lo8(3)
	breq .L5
	brsh .L9
	cpi r24,lo8(1)
	breq .L3
	cpi r24,lo8(2)
	brne .L1
	rjmp .L4
.L9:
	cpi r24,lo8(6)
	breq .L7
	cpi r24,lo8(7)
	breq .L8
	cpi r24,lo8(4)
	brne .L1
	rjmp .L6
.L5:
	lds r24,128
	andi r24,lo8(127)
	rjmp .L10
.L6:
	lds r24,128
	andi r24,lo8(-33)
.L10:
	sts 128,r24
	ret
.L3:
	in r24,0x24
	andi r24,lo8(127)
	rjmp .L12
.L4:
	in r24,0x24
	andi r24,lo8(-33)
.L12:
	out 0x24,r24
	ret
.L7:
	lds r24,176
	andi r24,lo8(127)
	rjmp .L11
.L8:
	lds r24,176
	andi r24,lo8(-33)
.L11:
	sts 176,r24
.L1:
	ret
	.size	turnOffPWM, .-turnOffPWM
	.section	.text.pinMode,"ax",@progbits
.global	pinMode
	.type	pinMode, @function
pinMode:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	ldi r25,0
	movw r30,r24
	subi r30,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r31,hi8(-(digital_pin_to_bit_mask_PGM))
/* #APP */
 ;  33 "/usr/share/arduino/hardware/arduino/cores/arduino/wiring_digital.c" 1
	lpm r20, Z
	
 ;  0 "" 2
/* #NOAPP */
	movw r30,r24
	subi r30,lo8(-(digital_pin_to_port_PGM))
	sbci r31,hi8(-(digital_pin_to_port_PGM))
/* #APP */
 ;  34 "/usr/share/arduino/hardware/arduino/cores/arduino/wiring_digital.c" 1
	lpm r24, Z
	
 ;  0 "" 2
/* #NOAPP */
	tst r24
	breq .L13
	ldi r25,0
	lsl r24
	rol r25
	movw r30,r24
	subi r30,lo8(-(port_to_mode_PGM))
	sbci r31,hi8(-(port_to_mode_PGM))
/* #APP */
 ;  40 "/usr/share/arduino/hardware/arduino/cores/arduino/wiring_digital.c" 1
	lpm r18, Z+
	lpm r19, Z
	
 ;  0 "" 2
/* #NOAPP */
	movw r26,r18
	subi r24,lo8(-(port_to_output_PGM))
	sbci r25,hi8(-(port_to_output_PGM))
	movw r30,r24
/* #APP */
 ;  41 "/usr/share/arduino/hardware/arduino/cores/arduino/wiring_digital.c" 1
	lpm r24, Z+
	lpm r25, Z
	
 ;  0 "" 2
/* #NOAPP */
	mov r28,r24
	mov r29,r25
	in r25,__SREG__
/* #APP */
 ;  45 "/usr/share/arduino/hardware/arduino/cores/arduino/wiring_digital.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ld r24,X
	cpse r22,__zero_reg__
	rjmp .L15
	com r20
	and r24,r20
	st X,r24
	ld r24,Y
	and r24,r20
	rjmp .L21
.L15:
	cpi r22,lo8(2)
	brne .L16
	mov r18,r20
	com r18
	and r24,r18
	st X,r24
	ld r24,Y
	or r24,r20
.L21:
	st Y,r24
	rjmp .L20
.L16:
	or r24,r20
	st X,r24
.L20:
	out __SREG__,r25
.L13:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	pinMode, .-pinMode
	.section	.text.digitalWrite,"ax",@progbits
.global	digitalWrite
	.type	digitalWrite, @function
digitalWrite:
	ldi r26,lo8(1)
	ldi r27,0
	ldi r30,lo8(gs(1f))
	ldi r31,hi8(gs(1f))
	jmp __prologue_saves__+((18 - 4) * 2)
1:
/* prologue: function */
/* frame size = 1 */
/* stack size = 5 */
.L__stack_usage = 5
	mov r18,r24
	ldi r19,0
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_timer_PGM))
	sbci r31,hi8(-(digital_pin_to_timer_PGM))
/* #APP */
 ;  139 "/usr/share/arduino/hardware/arduino/cores/arduino/wiring_digital.c" 1
	lpm r24, Z
	
 ;  0 "" 2
/* #NOAPP */
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r31,hi8(-(digital_pin_to_bit_mask_PGM))
/* #APP */
 ;  140 "/usr/share/arduino/hardware/arduino/cores/arduino/wiring_digital.c" 1
	lpm r17, Z
	
 ;  0 "" 2
/* #NOAPP */
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_port_PGM))
	sbci r31,hi8(-(digital_pin_to_port_PGM))
/* #APP */
 ;  141 "/usr/share/arduino/hardware/arduino/cores/arduino/wiring_digital.c" 1
	lpm r16, Z
	
 ;  0 "" 2
/* #NOAPP */
	tst r16
	breq .L22
	tst r24
	breq .L24
	std Y+1,r22
	call turnOffPWM
	ldd r22,Y+1
.L24:
	mov r30,r16
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(port_to_output_PGM))
	sbci r31,hi8(-(port_to_output_PGM))
/* #APP */
 ;  150 "/usr/share/arduino/hardware/arduino/cores/arduino/wiring_digital.c" 1
	lpm r24, Z+
	lpm r25, Z
	
 ;  0 "" 2
/* #NOAPP */
	movw r26,r24
	in r25,__SREG__
/* #APP */
 ;  153 "/usr/share/arduino/hardware/arduino/cores/arduino/wiring_digital.c" 1
	cli
 ;  0 "" 2
/* #NOAPP */
	ld r24,X
	cpse r22,__zero_reg__
	rjmp .L25
	com r17
	and r24,r17
	rjmp .L33
.L25:
	or r24,r17
.L33:
	st X,r24
	out __SREG__,r25
.L22:
/* epilogue start */
	adiw r28,1
	ldi r30, lo8(4)
	jmp __epilogue_restores__ + ((18 - 4) * 2)
	.size	digitalWrite, .-digitalWrite
	.section	.text.digitalRead,"ax",@progbits
.global	digitalRead
	.type	digitalRead, @function
digitalRead:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r18,r24
	ldi r19,0
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_timer_PGM))
	sbci r31,hi8(-(digital_pin_to_timer_PGM))
/* #APP */
 ;  166 "/usr/share/arduino/hardware/arduino/cores/arduino/wiring_digital.c" 1
	lpm r24, Z
	
 ;  0 "" 2
/* #NOAPP */
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r31,hi8(-(digital_pin_to_bit_mask_PGM))
/* #APP */
 ;  167 "/usr/share/arduino/hardware/arduino/cores/arduino/wiring_digital.c" 1
	lpm r29, Z
	
 ;  0 "" 2
/* #NOAPP */
	movw r30,r18
	subi r30,lo8(-(digital_pin_to_port_PGM))
	sbci r31,hi8(-(digital_pin_to_port_PGM))
/* #APP */
 ;  168 "/usr/share/arduino/hardware/arduino/cores/arduino/wiring_digital.c" 1
	lpm r28, Z
	
 ;  0 "" 2
/* #NOAPP */
	tst r28
	breq .L38
	cpse r24,__zero_reg__
	call turnOffPWM
.L36:
	mov r30,r28
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(port_to_input_PGM))
	sbci r31,hi8(-(port_to_input_PGM))
/* #APP */
 ;  176 "/usr/share/arduino/hardware/arduino/cores/arduino/wiring_digital.c" 1
	lpm r24, Z+
	lpm r25, Z
	
 ;  0 "" 2
/* #NOAPP */
	movw r26,r24
	ld r24,X
	and r24,r29
	ldi r18,lo8(1)
	ldi r19,0
	brne .L35
.L38:
	ldi r18,0
	ldi r19,0
.L35:
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	digitalRead, .-digitalRead
.global	digital_pin_to_timer_PGM
	.section	.progmem.data.digital_pin_to_timer_PGM,"a",@progbits
	.type	digital_pin_to_timer_PGM, @object
	.size	digital_pin_to_timer_PGM, 20
digital_pin_to_timer_PGM:
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.byte	0
	.byte	2
	.byte	1
	.byte	0
	.byte	0
	.byte	3
	.byte	4
	.byte	6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
.global	digital_pin_to_bit_mask_PGM
	.section	.progmem.data.digital_pin_to_bit_mask_PGM,"a",@progbits
	.type	digital_pin_to_bit_mask_PGM, @object
	.size	digital_pin_to_bit_mask_PGM, 20
digital_pin_to_bit_mask_PGM:
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.byte	32
	.byte	64
	.byte	-128
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.byte	32
	.byte	1
	.byte	2
	.byte	4
	.byte	8
	.byte	16
	.byte	32
.global	digital_pin_to_port_PGM
	.section	.progmem.data.digital_pin_to_port_PGM,"a",@progbits
	.type	digital_pin_to_port_PGM, @object
	.size	digital_pin_to_port_PGM, 20
digital_pin_to_port_PGM:
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	3
.global	port_to_input_PGM
	.section	.progmem.data.port_to_input_PGM,"a",@progbits
	.type	port_to_input_PGM, @object
	.size	port_to_input_PGM, 10
port_to_input_PGM:
	.word	0
	.word	0
	.word	35
	.word	38
	.word	41
.global	port_to_output_PGM
	.section	.progmem.data.port_to_output_PGM,"a",@progbits
	.type	port_to_output_PGM, @object
	.size	port_to_output_PGM, 10
port_to_output_PGM:
	.word	0
	.word	0
	.word	37
	.word	40
	.word	43
.global	port_to_mode_PGM
	.section	.progmem.data.port_to_mode_PGM,"a",@progbits
	.type	port_to_mode_PGM, @object
	.size	port_to_mode_PGM, 10
port_to_mode_PGM:
	.word	0
	.word	0
	.word	36
	.word	39
	.word	42
	.ident	"GCC: (GNU) 4.7.2"
