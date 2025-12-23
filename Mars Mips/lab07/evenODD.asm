#Check if number is even or odd
.data
inputMsg: .asciiz "Please enter the whole number: "
evenMsg: .asciiz "This is an even number."
oddMsg: .asciiz "This is an odd number."
newLine: .asciiz "\n"

.text
.globl main
main:
 li $v0,4
 la $a0,inputMsg
 syscall
 
 li $v0,5
 syscall
 
 move $t1,$v0
 
 li $t2,2
 div $t1,$t2
 mfhi $t3
 
 beqz $t3,even
 j odd
 
 even:
 li $v0,4
 la $a0,evenMsg
 syscall
 j exit

 odd:
 li $v0,4
 la $a0,oddMsg
 syscall
 j exit 
 
 exit:
 li $v0,10
 syscall
 
 
 






