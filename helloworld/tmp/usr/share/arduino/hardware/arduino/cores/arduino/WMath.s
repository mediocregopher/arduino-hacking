	.file	"WMath.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text._Z10randomSeedj,"ax",@progbits
.global	_Z10randomSeedj
	.type	_Z10randomSeedj, @function
_Z10randomSeedj:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sbiw r24,0
	breq .L1
	movw r22,r24
	ldi r24,0
	ldi r25,0
	call srandom
.L1:
	ret
	.size	_Z10randomSeedj, .-_Z10randomSeedj
	.section	.text._Z6randoml,"ax",@progbits
.global	_Z6randoml
	.type	_Z6randoml, @function
_Z6randoml:
	ldi r26,lo8(4)
	ldi r27,0
	ldi r30,lo8(gs(1f))
	ldi r31,hi8(gs(1f))
	jmp __prologue_saves__+((18 - 4) * 2)
1:
/* prologue: function */
/* frame size = 4 */
/* stack size = 8 */
.L__stack_usage = 8
	movw r18,r22
	movw r20,r24
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	cpc r24,__zero_reg__
	cpc r25,__zero_reg__
	breq .L8
	std Y+1,r22
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	call random
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	call __divmodsi4
	movw r16,r22
	movw r18,r24
	rjmp .L7
.L8:
	ldi r16,0
	ldi r17,0
	movw r18,r16
.L7:
	movw r22,r16
	movw r24,r18
/* epilogue start */
	adiw r28,4
	ldi r30, lo8(4)
	jmp __epilogue_restores__ + ((18 - 4) * 2)
	.size	_Z6randoml, .-_Z6randoml
	.section	.text._Z6randomll,"ax",@progbits
.global	_Z6randomll
	.type	_Z6randomll, @function
_Z6randomll:
	push r12
	push r13
	push r14
	push r15
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r12,r22
	movw r14,r24
	cp r22,r18
	cpc r23,r19
	cpc r24,r20
	cpc r25,r21
	brge .L10
	movw r24,r20
	movw r22,r18
	sub r22,r12
	sbc r23,r13
	sbc r24,r14
	sbc r25,r15
	call _Z6randoml
	add r12,r22
	adc r13,r23
	adc r14,r24
	adc r15,r25
.L10:
	movw r22,r12
	movw r24,r14
/* epilogue start */
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	_Z6randomll, .-_Z6randomll
	.section	.text._Z3maplllll,"ax",@progbits
.global	_Z3maplllll
	.type	_Z3maplllll, @function
_Z3maplllll:
	push r4
	push r5
	push r6
	push r7
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 14 */
.L__stack_usage = 14
	movw r4,r18
	movw r6,r20
	sub r22,r18
	sbc r23,r19
	sbc r24,r20
	sbc r25,r21
	ldd r18,Y+17
	ldd r19,Y+18
	ldd r20,Y+19
	ldd r21,Y+20
	sub r18,r10
	sbc r19,r11
	sbc r20,r12
	sbc r21,r13
	std Y+17,r18
	std Y+18,r19
	std Y+19,r20
	std Y+20,r21
	movw r18,r22
	movw r20,r24
	ldd r22,Y+17
	ldd r23,Y+18
	ldd r24,Y+19
	ldd r25,Y+20
	call __mulsi3
	sub r14,r4
	sbc r15,r5
	sbc r16,r6
	sbc r17,r7
	movw r20,r16
	movw r18,r14
	call __divmodsi4
	add r18,r10
	adc r19,r11
	adc r20,r12
	adc r21,r13
	movw r22,r18
	movw r24,r20
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r7
	pop r6
	pop r5
	pop r4
	ret
	.size	_Z3maplllll, .-_Z3maplllll
	.section	.text._Z8makeWordj,"ax",@progbits
.global	_Z8makeWordj
	.type	_Z8makeWordj, @function
_Z8makeWordj:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.size	_Z8makeWordj, .-_Z8makeWordj
	.section	.text._Z8makeWordhh,"ax",@progbits
.global	_Z8makeWordhh
	.type	_Z8makeWordhh, @function
_Z8makeWordhh:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r19,r24
	ldi r18,0
	or r18,r22
	movw r24,r18
	ret
	.size	_Z8makeWordhh, .-_Z8makeWordhh
	.ident	"GCC: (GNU) 4.7.2"
