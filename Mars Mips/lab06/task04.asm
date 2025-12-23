.data
actualBits: .word 0x01010485
maskingBits:.word 0xFF000000
.text
.globl main
main:
 lw $t0,actualBits
 lw $t1,maskingBits
 
 xor $t3,$t0,$t1
 
 li $v0,1
 move $a0,$t3
 syscall
 
 li $v0,10
 syscall

 
 
 
 
 

