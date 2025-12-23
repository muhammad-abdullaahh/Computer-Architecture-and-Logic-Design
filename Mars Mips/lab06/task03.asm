.data
actualBits: .word 0x0108B0A0
maskingBits:.word 0x00000414
.text
.globl main
main:
 lw $t0,actualBits
 lw $t1,maskingBits
 
 or $t3,$t0,$t1
 
 li $v0,1
 move $a0,$t3
 syscall
 
 li $v0,10
 syscall

 
 
 
 
 

