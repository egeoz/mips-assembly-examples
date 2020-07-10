.data
	str1: .asciiz "The numbers $t1 and $t2 are equal.\n"
	str2: .asciiz "The numbers $t0 and $t1 are not equal.\n"
.text
	main:
		addi $t0,$zero,5
		addi $t1,$zero,12
		addi $t2,$zero,12	
	
		beq $t1,$t2,numEqual
		bne $t0,$t1,numNotEqual
		
	li $v0,10
	syscall
	
	numEqual:
		li $v0,4
		la $a0,str1
		syscall
		
	numNotEqual:
		li $v0,4
		la $a0,str2
		syscall
