.data
inp1: .asciiz "enter n1: "
inp2: .asciiz "enter n2: "


.text
#n1###########
li $v0,4
la $a0,inp1

syscall

li $v0,5

syscall

move $t0 , $v0
#n2##############


li $v0,4
la $a0,inp2

syscall

li $v0,5

syscall
move $t1 , $v0
####################

li $t2 , 0

loop:

add $t2 ,$t2, $t0

addi $t0 , $t0,1
ble $t0 ,$t1 ,loop


li $v0,1
move $a0,$t2

syscall
  


