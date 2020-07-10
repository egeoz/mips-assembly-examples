.data
	num1: .word 3
.text
	lw $t0,num1

	sll $s0,$t0,3	# $s0=3*2^3
	
	li $v0,1
	move $a0,$s0
	syscall