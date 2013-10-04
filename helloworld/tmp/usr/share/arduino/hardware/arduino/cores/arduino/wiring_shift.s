	.file	"wiring_shift.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.shiftIn,"ax",@progbits
.global	shiftIn
	.type	shiftIn, @function
shiftIn:
	ldi r26,0
	ldi r27,0
	ldi r30,lo8(gs(1f))
	ldi r31,hi8(gs(1f))
	jmp __prologue_saves__+((18 - 8) * 2)
1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	mov r13,r24
	mov r14,r22
	mov r12,r20
	ldi r28,lo8(7)
	ldi r29,0
	mov r15,__zero_reg__
	ldi r16,lo8(7)
	ldi r17,0
.L4:
	ldi r22,lo8(1)
	mov r24,r14
	call digitalWrite
	mov r24,r13
	cpse r12,__zero_reg__
	rjmp .L2
	call digitalRead
	movw r18,r16
	sub r18,r28
	sbc r19,r29
	rjmp .L6
.L2:
	call digitalRead
	mov r18,r28
.L6:
	rjmp 2f
	1:
	lsl r24
	2:
	dec r18
	brpl 1b
	or r15,r24
	ldi r22,0
	mov r24,r14
	call digitalWrite
	sbiw r28,1
	brcc .L4
	mov r24,r15
/* epilogue start */
	in r28,__SP_L__
	in r29,__SP_H__
	ldi r30, lo8(8)
	jmp __epilogue_restores__ + ((18 - 8) * 2)
	.size	shiftIn, .-shiftIn
	.section	.text.shiftOut,"ax",@progbits
.global	shiftOut
	.type	shiftOut, @function
shiftOut:
	ldi r26,0
	ldi r27,0
	ldi r30,lo8(gs(1f))
	ldi r31,hi8(gs(1f))
	jmp __prologue_saves__+((18 - 9) * 2)
1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	mov r12,r24
	mov r13,r22
	mov r11,r20
	ldi r28,lo8(7)
	ldi r29,0
	mov r16,r18
	ldi r17,0
	ldi r24,lo8(7)
	mov r14,r24
	mov r15,__zero_reg__
.L10:
	cpse r11,__zero_reg__
	rjmp .L8
	movw r30,r14
	sub r30,r28
	sbc r31,r29
	movw r22,r16
	rjmp 2f
	1:
	asr r23
	ror r22
	2:
	dec r30
	brpl 1b
	rjmp .L12
.L8:
	movw r22,r16
	mov r0,r28
	rjmp 2f
	1:
	asr r23
	ror r22
	2:
	dec r0
	brpl 1b
.L12:
	andi r22,1
	clr r23
	mov r24,r12
	call digitalWrite
	ldi r22,lo8(1)
	mov r24,r13
	call digitalWrite
	ldi r22,0
	mov r24,r13
	call digitalWrite
	sbiw r28,1
	brcc .L10
/* epilogue start */
	in r28,__SP_L__
	in r29,__SP_H__
	ldi r30, lo8(9)
	jmp __epilogue_restores__ + ((18 - 9) * 2)
	.size	shiftOut, .-shiftOut
	.ident	"GCC: (GNU) 4.7.2"
