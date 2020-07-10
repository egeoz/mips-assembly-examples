.data
	num1: .word 10
	num2: .word 21
.text
	lw $t0,num1
	lw $t1,num2
	
	sub $t2,$t0,$t1
	li $v0,1
	move $a0,$t2
	syscall