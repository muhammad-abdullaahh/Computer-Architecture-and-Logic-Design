.data
vi: .asciiz "Enter the initial velocity: "
a: .asciiz "Enter the acceleration: "
t: .asciiz "Enter the time: "
vf: .asciiz "The final velocity of the car will be "
newLine: .asciiz "\n"

.text
.globl main
main:
 li $v0,4
 la $a0,vi
 syscall
 
 li $v0,6
 syscall
 
 mov.s $f2,$f0

 li $v0,4
 la $a0,a
 syscall
 
 li $v0,6
 syscall
 mov.s $f4,$f0  #a=f4
 
 li $v0,4
 la $a0,t
 syscall
 
 li $v0,6
 syscall
 mov.s $f6,$f0 #t=f6
 
 mul.s $f8,$f6,$f4
 add.s $f12,$f8,$f2
 
 li $v0,4
 la $a0,vf
 syscall
 
 li $v0,2
 la $a0,vf
 syscall
 
 
 
 

