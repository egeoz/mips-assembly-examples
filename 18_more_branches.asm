.data
	str1: .asciiz "The number 100 is less than 200.\n"
.text
	main:
		addi $t0,$zero,100
		addi $t1,$zero,250
	
		blt $t0,$t1,print
		
	li $v0,10
	syscall
	
	print:
		li $v0,4
		la $a0,str1
		syscall
