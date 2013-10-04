	.file	"wiring_analog.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.analogReference,"ax",@progbits
.global	analogReference
	.type	analogReference, @function
analogReference:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sts analog_reference,r24
	ret
	.size	analogReference, .-analogReference
	.section	.text.analogRead,"ax",@progbits
.global	analogRead
	.type	analogRead, @function
analogRead:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cpi r24,lo8(14)
	brlo .L3
	subi r24,lo8(-(-14))
.L3:
	andi r24,lo8(7)
	lds r18,analog_reference
	ldi r20,lo8(64)
	mul r18,r20
	movw r18,r0
	clr __zero_reg__
	or r24,r18
	sts 124,r24
	lds r24,122
	ori r24,lo8(64)
	sts 122,r24
.L4:
	lds r24,122
	sbrc r24,6
	rjmp .L4
	lds r18,120
	lds r19,121
	mov r25,r19
	ldi r24,0
	movw r20,r24
	or r20,r18
	movw r18,r20
	movw r24,r18
	ret
	.size	analogRead, .-analogRead
	.section	.text.analogWrite,"ax",@progbits
.global	analogWrite
	.type	analogWrite, @function
analogWrite:
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	mov r17,r24
	movw r28,r22
	ldi r22,lo8(1)
	call pinMode
	sbiw r28,0
	brne .L7
.L18:
	ldi r22,0
	rjmp .L20
.L7:
	cpi r28,-1
	cpc r29,__zero_reg__
	brne .L9
.L19:
	ldi r22,lo8(1)
.L20:
	mov r24,r17
	call digitalWrite
	rjmp .L6
.L9:
	mov r30,r17
	ldi r31,0
	subi r30,lo8(-(digital_pin_to_timer_PGM))
	sbci r31,hi8(-(digital_pin_to_timer_PGM))
/* #APP */
 ;  118 "/usr/share/arduino/hardware/arduino/cores/arduino/wiring_analog.c" 1
	lpm r30, Z
	
 ;  0 "" 2
/* #NOAPP */
	cpi r30,lo8(3)
	breq .L13
	brsh .L17
	cpi r30,lo8(1)
	breq .L11
	cpi r30,lo8(2)
	brne .L10
	rjmp .L12
.L17:
	cpi r30,lo8(6)
	breq .L15
	cpi r30,lo8(7)
	breq .L16
	cpi r30,lo8(4)
	brne .L10
	rjmp .L14
.L11:
	in r24,0x24
	ori r24,lo8(-128)
	out 0x24,r24
	out 0x27,r28
	rjmp .L6
.L12:
	in r24,0x24
	ori r24,lo8(32)
	out 0x24,r24
	out 0x28,r28
	rjmp .L6
.L13:
	lds r24,128
	ori r24,lo8(-128)
	sts 128,r24
	sts 136+1,r29
	sts 136,r28
	rjmp .L6
.L14:
	lds r24,128
	ori r24,lo8(32)
	sts 128,r24
	sts 138+1,r29
	sts 138,r28
	rjmp .L6
.L15:
	lds r24,176
	ori r24,lo8(-128)
	sts 176,r24
	sts 179,r28
	rjmp .L6
.L16:
	lds r24,176
	ori r24,lo8(32)
	sts 176,r24
	sts 180,r28
	rjmp .L6
.L10:
	cpi r28,-128
	cpc r29,__zero_reg__
	brlt .+2
	rjmp .L19
	rjmp .L18
.L6:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	ret
	.size	analogWrite, .-analogWrite
.global	analog_reference
	.section	.data.analog_reference,"aw",@progbits
	.type	analog_reference, @object
	.size	analog_reference, 1
analog_reference:
	.byte	1
	.ident	"GCC: (GNU) 4.7.2"
.global __do_copy_data
