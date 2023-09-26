.data
	prompt: .asciiz "Provide Value 1: "
	prompt1:	.asciiz "Provide Value 2: "
	equals: .asciiz "X and Y are equal"
	xgreater: .asciiz "X is Greater than Y"
	ygreater: .asciiz "Y is Greater than X"
		
.text
main:
	li $v0, 4
	la $a0, prompt
	la $a2, prompt1
	syscall
	
	li $v0, 5
	li $v1, 6
	syscall
	
	move $s0, $v0 
	move $s1, $v1
	
	
	beq $s0, $s1, equal	#x = y
	
	bge $s0,$s1, xgreaterthany	#x > y
	
	bge $s1, $s0, ygreaterthanx	#y > x
equal:
	li $v0,4
	la $a0, equals  
	j exit
	
xgreaterthany:
	li $v0,4
	la $a0, xgreater  
	j exit
	
ygreaterthanx:	
	li $v0,4
	la $a0, ygreater
	
exit:
	li $v0, 10
	syscall
