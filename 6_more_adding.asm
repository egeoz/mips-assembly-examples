.data
	num1: .word 30
	num2: .word 45
.text
	lw $t0,num1
	lw $t1,num2
	
	add $t2,$t1,$t0
	
	li $v0,1
	move $a0,$t2
	syscall