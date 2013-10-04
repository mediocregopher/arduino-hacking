	.file	"IPAddress.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text._ZNK9IPAddress7printToER5Print,"ax",@progbits
.global	_ZNK9IPAddress7printToER5Print
	.type	_ZNK9IPAddress7printToER5Print, @function
_ZNK9IPAddress7printToER5Print:
	ldi r26,0
	ldi r27,0
	ldi r30,lo8(gs(1f))
	ldi r31,hi8(gs(1f))
	jmp __prologue_saves__+((18 - 10) * 2)
1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	movw r12,r24
	movw r14,r22
	ldi r28,0
	ldi r29,0
	ldi r16,0
	ldi r17,0
.L2:
	movw r30,r12
	add r30,r28
	adc r31,r29
	ldi r20,lo8(10)
	ldi r21,0
	ldd r22,Z+2
	movw r24,r14
	call _ZN5Print5printEhi
	movw r10,r24
	ldi r22,lo8(46)
	movw r24,r14
	call _ZN5Print5printEc
	add r24,r10
	adc r25,r11
	add r16,r24
	adc r17,r25
	adiw r28,1
	cpi r28,3
	cpc r29,__zero_reg__
	brne .L2
	ldi r20,lo8(10)
	ldi r21,0
	movw r30,r12
	ldd r22,Z+5
	movw r24,r14
	call _ZN5Print5printEhi
	add r16,r24
	adc r17,r25
	movw r24,r16
/* epilogue start */
	in r28,__SP_L__
	in r29,__SP_H__
	ldi r30, lo8(10)
	jmp __epilogue_restores__ + ((18 - 10) * 2)
	.size	_ZNK9IPAddress7printToER5Print, .-_ZNK9IPAddress7printToER5Print
	.section	.text._ZN9IPAddressC2Ev,"ax",@progbits
.global	_ZN9IPAddressC2Ev
	.type	_ZN9IPAddressC2Ev, @function
_ZN9IPAddressC2Ev:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r18,lo8(_ZTV9IPAddress+4)
	ldi r19,hi8(_ZTV9IPAddress+4)
	movw r30,r24
	std Z+1,r19
	st Z,r18
	std Z+2,__zero_reg__
	std Z+3,__zero_reg__
	std Z+4,__zero_reg__
	std Z+5,__zero_reg__
	ret
	.size	_ZN9IPAddressC2Ev, .-_ZN9IPAddressC2Ev
.global	_ZN9IPAddressC1Ev
	.set	_ZN9IPAddressC1Ev,_ZN9IPAddressC2Ev
	.section	.text._ZN9IPAddressC2Ehhhh,"ax",@progbits
.global	_ZN9IPAddressC2Ehhhh
	.type	_ZN9IPAddressC2Ehhhh, @function
_ZN9IPAddressC2Ehhhh:
	push r16
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	movw r30,r24
	ldi r24,lo8(_ZTV9IPAddress+4)
	ldi r25,hi8(_ZTV9IPAddress+4)
	std Z+1,r25
	st Z,r24
	std Z+2,r22
	std Z+3,r20
	std Z+4,r18
	std Z+5,r16
/* epilogue start */
	pop r16
	ret
	.size	_ZN9IPAddressC2Ehhhh, .-_ZN9IPAddressC2Ehhhh
.global	_ZN9IPAddressC1Ehhhh
	.set	_ZN9IPAddressC1Ehhhh,_ZN9IPAddressC2Ehhhh
	.section	.text._ZN9IPAddressC2Em,"ax",@progbits
.global	_ZN9IPAddressC2Em
	.type	_ZN9IPAddressC2Em, @function
_ZN9IPAddressC2Em:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r18,lo8(_ZTV9IPAddress+4)
	ldi r19,hi8(_ZTV9IPAddress+4)
	movw r30,r24
	std Z+1,r19
	st Z,r18
	std Z+2,r20
	std Z+3,r21
	std Z+4,r22
	std Z+5,r23
	ret
	.size	_ZN9IPAddressC2Em, .-_ZN9IPAddressC2Em
.global	_ZN9IPAddressC1Em
	.set	_ZN9IPAddressC1Em,_ZN9IPAddressC2Em
	.section	.text._ZN9IPAddressC2EPKh,"ax",@progbits
.global	_ZN9IPAddressC2EPKh
	.type	_ZN9IPAddressC2EPKh, @function
_ZN9IPAddressC2EPKh:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r18,lo8(_ZTV9IPAddress+4)
	ldi r19,hi8(_ZTV9IPAddress+4)
	movw r30,r24
	std Z+1,r19
	st Z,r18
	movw r30,r22
	ld r20,Z
	ldd r21,Z+1
	ldd r22,Z+2
	ldd r23,Z+3
	movw r30,r24
	std Z+2,r20
	std Z+3,r21
	std Z+4,r22
	std Z+5,r23
	ret
	.size	_ZN9IPAddressC2EPKh, .-_ZN9IPAddressC2EPKh
.global	_ZN9IPAddressC1EPKh
	.set	_ZN9IPAddressC1EPKh,_ZN9IPAddressC2EPKh
	.section	.text._ZN9IPAddressaSEPKh,"ax",@progbits
.global	_ZN9IPAddressaSEPKh
	.type	_ZN9IPAddressaSEPKh, @function
_ZN9IPAddressaSEPKh:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	movw r26,r22
	ld r20,X+
	ld r21,X+
	ld r22,X+
	ld r23,X
	std Z+2,r20
	std Z+3,r21
	std Z+4,r22
	std Z+5,r23
	ret
	.size	_ZN9IPAddressaSEPKh, .-_ZN9IPAddressaSEPKh
	.section	.text._ZN9IPAddressaSEm,"ax",@progbits
.global	_ZN9IPAddressaSEm
	.type	_ZN9IPAddressaSEm, @function
_ZN9IPAddressaSEm:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	std Z+2,r20
	std Z+3,r21
	std Z+4,r22
	std Z+5,r23
	ret
	.size	_ZN9IPAddressaSEm, .-_ZN9IPAddressaSEm
	.section	.text._ZN9IPAddresseqEPKh,"ax",@progbits
.global	_ZN9IPAddresseqEPKh
	.type	_ZN9IPAddresseqEPKh, @function
_ZN9IPAddresseqEPKh:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r18,r22
	movw r22,r24
	subi r22,-2
	sbci r23,-1
	ldi r20,lo8(4)
	ldi r21,0
	movw r24,r18
	call memcmp
	movw r18,r24
	ldi r24,lo8(1)
	or r18,r19
	breq .L11
	ldi r24,0
.L11:
	ret
	.size	_ZN9IPAddresseqEPKh, .-_ZN9IPAddresseqEPKh
	.section	.text.startup._GLOBAL__sub_I__ZN9IPAddressC2Ev,"ax",@progbits
	.type	_GLOBAL__sub_I__ZN9IPAddressC2Ev, @function
_GLOBAL__sub_I__ZN9IPAddressC2Ev:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(_ZTV9IPAddress+4)
	ldi r25,hi8(_ZTV9IPAddress+4)
	sts _ZL11INADDR_NONE+1,r25
	sts _ZL11INADDR_NONE,r24
	sts _ZL11INADDR_NONE+2,__zero_reg__
	sts _ZL11INADDR_NONE+3,__zero_reg__
	sts _ZL11INADDR_NONE+4,__zero_reg__
	sts _ZL11INADDR_NONE+5,__zero_reg__
	ret
	.size	_GLOBAL__sub_I__ZN9IPAddressC2Ev, .-_GLOBAL__sub_I__ZN9IPAddressC2Ev
	.global __do_global_ctors
	.section .ctors,"a",@progbits
	.p2align	1
	.word	gs(_GLOBAL__sub_I__ZN9IPAddressC2Ev)
	.weak	_ZTV9IPAddress
	.section	.rodata._ZTV9IPAddress,"aG",@progbits,_ZTV9IPAddress,comdat
	.type	_ZTV9IPAddress, @object
	.size	_ZTV9IPAddress, 6
_ZTV9IPAddress:
	.word	0
	.word	0
	.word	gs(_ZNK9IPAddress7printToER5Print)
	.weak	_ZTV9Printable
	.section	.rodata._ZTV9Printable,"aG",@progbits,_ZTV9Printable,comdat
	.type	_ZTV9Printable, @object
	.size	_ZTV9Printable, 6
_ZTV9Printable:
	.word	0
	.word	0
	.word	gs(__cxa_pure_virtual)
	.section	.bss._ZL11INADDR_NONE,"aw",@nobits
	.type	_ZL11INADDR_NONE, @object
	.size	_ZL11INADDR_NONE, 6
_ZL11INADDR_NONE:
	.zero	6
	.ident	"GCC: (GNU) 4.7.2"
.global __do_copy_data
.global __do_clear_bss
