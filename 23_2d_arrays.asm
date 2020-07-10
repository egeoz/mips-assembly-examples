.data
	mulArr:  .word 2,5
		.word 45,5
		.word 76,34
		
	sizeRow: . word 3	
	sizeColumn: .word 2
	.eqv DATA_SIZE 4

.text
	main:
		la $a1,mulArr
		lw $a2,sizeRow
		lw $a3,sizeColumn
		
		jal sumOfDiagonals
		
		move $a0,$v0
		li $v0,1
		syscall
		
	li $v0,10
	syscall
	
	sumOfDiagonals:
		li $v0,0	# return
		li $t0,0	# index
		
		sumLoop:
			mul $t1,$t0,$a3	# t1=rowindex*col
			add $t1,$t1,$t0		# t1=t1+col index
			mul $t1,$t1,DATA_SIZE	# t1=t1*4
			add $t1,$t1,$a1	# base adress added
			
			lw $t2,($t1) # t2=t1
			add $v0,$v0,$t2	# sum
			
			addi $t0,$t0,1
			blt $t0,$a3,sumLoop	# if index is less than the size go back to sumLoop
			
		jr $ra	
			
			
			