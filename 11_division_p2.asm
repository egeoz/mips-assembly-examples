.data
	num1: .word 30
	num2: .word 7
.text
	lw $t0,num1
	lw $t1,num2
	
	div $t0,$t1    # remaining=>high, result=>low
	
	mflo $s0
	mfhi $s1
	
	li $v0,1
	move $a0,$s1
	syscall
