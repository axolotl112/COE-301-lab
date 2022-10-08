.data 
inp1: .asciiz "enter your name: "

output: .asciiz "hello  "

name: .space 20

.text
#display name##########
li $v0 , 4
la $a0 , inp1
syscall 
###########################
#read string############
li $v0 ,8
li $a1 ,20
la $a0 ,name
syscall
move $t0 , $a0 # to display later
################################## 


#display####################
li $v0 , 4

la $a0 ,output
syscall
############################


#print name#############
li $v0 , 4
move $a0 , $t0
syscall
#######################  
 

