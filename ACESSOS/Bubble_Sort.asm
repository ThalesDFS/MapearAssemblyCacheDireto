; Bubble Sort

.code
lda tam
add #-1
sta tmp1
main_loop:
lda #vet
add tmp1
 sta endvar1
 lda endvar1,I
 lda tmp1
 add #-1
 sta tmp2
 loop:
 lda #vet
 add tmp2
 sta endvar2
 lda endvar2,I
 not
 add #1
 add endvar1,I
 jn troca
 jmp nao_troca
 troca:
 lda endvar1,I
 sta var1
 lda endvar2,I
 sta endvar1,I
 lda var1
 sta endvar2,I
 nao_troca:
 lda tmp2
 add #-1
 sta tmp2
 jn sai
 jmp loop
 sai:
 lda tmp1
 add #-1
 sta tmp1
 jz fim
 jmp main_loop
 fim:
 hlt
 .endcode


 org #90h
 .data
 tmp1: db #00 
 tmp2: db #00 
 var1: db #00 

 endvar1: db #00 
 endvar2: db #00 
 tam: db #03 
 vet: db #34h,#11h,#27h
 .enddata
