.data
	num1: .word 30
	num2: .word 5
.text
	lw $t0,num1
	lw $t1,num2
	
	div $s0,$t0,$t1
	
	li $v0,1
	move $a0,$s0
	syscall