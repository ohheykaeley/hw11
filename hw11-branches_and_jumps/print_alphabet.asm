.text
main:	
	li $v0, 4
	la $a0, 122
	syscall
	
	li $v0, 5
	syscall
	
	li $s3, 97
	move $s0,$v0
	move $s1, $s3
	
loop:
	beq $s0, $s1, exit
	
	move $a0, $s1
	li $v0, 1
	syscall
	
	li $a0, $s1
	li $v0, 1
	syscall
	
	li $a0, 10
	li $v0, 11
	syscall
	
	addi $s1, $s1, 1
	
	j loop
exit:
	li $v0, 10
	syscall