	.file	"WInterrupts.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.attachInterrupt,"ax",@progbits
.global	attachInterrupt
	.type	attachInterrupt, @function
attachInterrupt:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cpi r24,lo8(2)
	brsh .L1
	mov r30,r24
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(intFunc))
	sbci r31,hi8(-(intFunc))
	std Z+1,r23
	st Z,r22
	cpi r24,lo8(1)
	breq .L4
	lds r24,105
	andi r24,lo8(-4)
	or r24,r20
	sts 105,r24
	sbi 0x1d,0
	ret
.L4:
	lds r24,105
	lsl r20
	rol r21
	lsl r20
	rol r21
	andi r24,lo8(-13)
	or r24,r20
	sts 105,r24
	sbi 0x1d,1
.L1:
	ret
	.size	attachInterrupt, .-attachInterrupt
	.section	.text.detachInterrupt,"ax",@progbits
.global	detachInterrupt
	.type	detachInterrupt, @function
detachInterrupt:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cpi r24,lo8(2)
	brsh .L5
	cpi r24,lo8(1)
	breq .L8
	cbi 0x1d,0
	rjmp .L9
.L8:
	cbi 0x1d,1
.L9:
	mov r30,r24
	ldi r31,0
	lsl r30
	rol r31
	subi r30,lo8(-(intFunc))
	sbci r31,hi8(-(intFunc))
	std Z+1,__zero_reg__
	st Z,__zero_reg__
.L5:
	ret
	.size	detachInterrupt, .-detachInterrupt
	.section	.text.__vector_1,"ax",@progbits
.global	__vector_1
	.type	__vector_1, @function
__vector_1:
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
	lds r24,intFunc
	lds r25,intFunc+1
	or r24,r25
	breq .L10
	lds r30,intFunc
	lds r31,intFunc+1
	icall
.L10:
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
	.size	__vector_1, .-__vector_1
	.section	.text.__vector_2,"ax",@progbits
.global	__vector_2
	.type	__vector_2, @function
__vector_2:
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
	lds r24,intFunc+2
	lds r25,intFunc+2+1
	or r24,r25
	breq .L15
	lds r30,intFunc+2
	lds r31,intFunc+2+1
	icall
.L15:
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
	.size	__vector_2, .-__vector_2
	.section	.bss.intFunc,"aw",@nobits
	.type	intFunc, @object
	.size	intFunc, 4
intFunc:
	.zero	4
	.ident	"GCC: (GNU) 4.7.2"
.global __do_clear_bss
