	.file	"ext.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text._Z5onoffi,"ax",@progbits
.global	_Z5onoffi
	.type	_Z5onoffi, @function
_Z5onoffi:
	push r12
	push r13
	push r14
	push r15
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r12,r24
	ldi r22,lo8(1)
	ldi r24,lo8(13)
	call digitalWrite
	clr r14
	sbrc r13,7
	com r14
	mov r15,r14
	movw r24,r14
	movw r22,r12
	call delay
	ldi r22,0
	ldi r24,lo8(13)
	call digitalWrite
	movw r24,r14
	movw r22,r12
	call delay
/* epilogue start */
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	_Z5onoffi, .-_Z5onoffi
	.ident	"GCC: (GNU) 4.7.2"
