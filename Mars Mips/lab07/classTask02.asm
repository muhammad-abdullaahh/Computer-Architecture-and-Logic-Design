#Check if two numbers are equal, greater greater and print sum
.data
input1: .asciiz "Please enter the 1st number: "
input2: .asciiz "Please enter the 2nd number: "
sameMsg: .asciiz "The numbers are same."
greaterMsg: .asiiz "Number 1 is greater"
smallerMsg: .asiiz "Number 1 is smaller"
newLine: .asciiz "\n"

.text
.globl main
main:
 li $v0,4
 la $a0,input1
 syscall
 
 li $v0,5
 syscall
 
  move $t1,$v0

 li $v0,4
 la $a0,input2
 syscall
 
 li $v0,5
 syscall 
 

 move $t2,$v0
 
 sub $t3,$t2,$t1
 beqz $t3,equal
 syscall
 j exit
 
 bgt $t2,$t1,greater1
 blt $t2,$t1,smaller1
 j same 

 equal:
 li $v0,4
 la $a0,sameMsg
 syscall
 j exit

 greater1:
 li $v0,4
 la $a0,greaterMsg
 syscall 
 j exit

 smaller1:
 li $v0,4
 la $a0,smallerMsg
 syscall  
 
 exit:
 li $v0,10
 syscall
 
 
 
 