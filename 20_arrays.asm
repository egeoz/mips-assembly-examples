.data
	arr: .space 16	# one int is 4 bytes and arr of 4 
	space: .asciiz " "
.text
	main:
		addi $s0,$zero,23
		addi $s1,$zero,4
		addi $s2,$zero,64
		addi $s3,$zero,12
		
		#index= $t0
		addi $t0,$zero,0
		addi $t1,$zero,0
		
		sw $s0,arr($t0)
		addi $t0,$t0,4
		
		sw $s1,arr($t0)
		addi $t0,$t0,4
		
		sw $s2,arr($t0)
		addi $t0,$t0,4	
		
		sw $s3,arr($t0)
		addi $t0,$t0,4	
		
		j while
		
	while:
		lw $t5,arr($t1)
		addi $t1,$t1,4
				
		beq $t1,20,exit
		jal print	
		
		j while
		
	print:
		li $v0,1
		move $a0,$t5
		syscall
	
		li $v0,4
		la $a0,space
		syscall
		
		jr $ra
		
	exit:
		li $v0,10
		syscall
