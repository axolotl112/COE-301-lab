.data

inp1: .asciiz "enter a number:"
out1: .asciiz "the number of 1s"


.text

li $v0 ,4

la $a0,inp1

syscall

li $v0 ,5

syscall

move $t0,$v0

li $t1,0

loop:

beq $t0 ,0, endloop

and $t2 , $t0 ,1



beq $t2 , 0 ,next
add $t1 ,$t1,1

    
next:
 srl $t0,$t0,1 
b loop
endloop:

li $v0 ,4

la $a0,out1


li $v0 ,1

move $a0,$t1

syscall




