	.file	"main.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call init
	call setup
	ldi r28,lo8(gs(_Z14serialEventRunv))
	ldi r29,hi8(gs(_Z14serialEventRunv))
.L9:
	call loop
	sbiw r28,0
	breq .L9
	call _Z14serialEventRunv
	rjmp .L9
	.size	main, .-main
	.weak	_Z14serialEventRunv
	.ident	"GCC: (GNU) 4.7.2"
