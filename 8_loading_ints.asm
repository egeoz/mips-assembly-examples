.data
	num1: .word 3
.text
	lw $s0,num1
	addi $s1,$zero,5 
	
	mul $t0,$s0,$s1
	
	li $v0,1
	move $a0,$t0
	syscall
