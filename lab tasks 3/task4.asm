.data 
inp1: .asciiz "enter a number: "
.text 

li $v0 ,4

la $a0 , inp1

syscall

li $v0 ,5
syscall

move $t0 ,$v0

sll $t1 , $t0 ,3

sll $t2 , $t0 , 4

srl $t3 , $t0 , 1

add $s0 , $t1 , $t2

add $s1 , $s0 ,$t3

li $v0 , 1
move $a0 , $s1


syscall





                                                                
                                                                                                                                
                                                                                                                                                                                                                                                                