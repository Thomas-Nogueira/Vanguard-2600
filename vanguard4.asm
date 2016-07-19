main:
	
	addi $23, $0, 119   	# W - MOVE A NAVE PARA CIMA
	addi $24, $0, 97  	# A - MOVE A NAVE PARA ESQUERDA
	addi $25, $0, 115  	# S - MOVE A NAVE PARA BAIXO
	addi $26, $0, 100  	# D - MOVE A NAVE PARA DIREITA
	addi $27, $0, 0		# RECEBE O VALOR PARA DESLOCAMENTO DA NAVE
	addi $18, $0, 0         # RECEBE O VALOR PARA DESLOCAMENTO DA FASE

	
#--------------------------------------------------------------------------------------------------------------#
#				IDENTIFICA SE HOUVE ENTRADA OU NÃO			        	       #		
#--------------------------------------------------------------------------------------------------------------#

digitar:

        lui  $12, 0xffff # VALOR DE ENTRADA ZERO
        lw   $13, 0($12)
        beq  $13, $0, digitar
        addi $14, $12, 4
        lw   $15, 0($14)
        
#--------------------------------------------------------------------------------------------------------------#
#					IDENTIFICA O VALOR DIGITADO			        	       #		
#--------------------------------------------------------------------------------------------------------------#
     
        beq  $15, $23, w
        beq  $15, $24, a
        beq  $15, $25, s
        beq  $15, $26, d
	j 	digitar
	
w:
	addi $27, $27, -512
	addi $18, $18, -4
	j	background
a:
	addi $27, $27, -4
	addi $18, $18, -4
	j	background
s:
	addi $27, $27, 512
	addi $18, $18, -4
	j	background
d:
	addi $27, $27, 4
	addi $18, $18, -4

#--------------------------------------------------------------------------------------------------------------#
#					DESENHA O BACKGROUND PRETO NA TELA				       #
#				TELA DO JOGO: 1024 X 512 PIXELS / CRIADO COM 8 PIXEL		               #
#--------------------------------------------------------------------------------------------------------------#

	addi $16, $0, 1
	addi $17, $0, 8192

	lui $9, 0x1001
	addi $10, $0, 0x000000

background:
	sw $10, 0($9)
	addi $9, $9, 4 
	add $16, $16, 1
	beq $16, $17, sair
	j 	background
	
sair: 
 
	addi $10, $0, 0xc0c0c0
	sw $10, 0($9)
 
#--------------------------------------------------------------------------------------------------------------#
#					DESENHA AS BARRAS DE CIMA					       #		
#--------------------------------------------------------------------------------------------------------------#

	addi $18, $0, 0
	addi $19, $0, 128

	lui $9, 0x1001
	addi $10, $0, 0x6a5acd
	
roxo:
	
	sw $10, 0($9)
	addi $9, $9, 4 
	add $18, $18, 1
	beq $18, $19, colunaCima
	j 	roxo
	
colunaCima:
	
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 12 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 100 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 124 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 124 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 148 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 148 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 176 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 176 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 176 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 176 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x9acd32
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x9acd32
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x9acd32
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x9acd32
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x9acd32
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x9acd32
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x9acd32
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x9acd32
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x9acd32
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x9acd32
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x9acd32
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x9acd32
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x9acd32
	sw $10, 0($9)
	addi $9, $9, 4

#--------------------------------------------------------------------------------------------------------------#
#					DESENHA AS BARRAS DE BAIXO					       #		
#--------------------------------------------------------------------------------------------------------------#

colunaBaixo:
	lui $9, 0x1001
	
	addi $9, $9, 25172
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 184 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00ff7f
	sw $10, 0($9)
	addi $9, $9, 184 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 176 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x48d1cc
	sw $10, 0($9)
	addi $9, $9, 176 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 100 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 44 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 100 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x40e0d0
	sw $10, 0($9)
	addi $9, $9, 44 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 92 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 28 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 76 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x00bfff
	sw $10, 0($9)
	addi $9, $9, 28 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 68 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 12 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 68 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x1e90ff
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 44 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 12 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x000000
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x6a5acd
	sw $10, 0($9)
	addi $9, $9, 4 

	
#--------------------------------------------------------------------------------------------------------------#
#						DESENHA A NAVE				        	       #		
#--------------------------------------------------------------------------------------------------------------#

nave:

	lui $9, 0x1001
	
	addi $9, $9, 10752 
 	add  $9, $9, $27 
 	
	addi $10, $0, 0xc0c0c0
	sw $10, 0($9)
	addi $9, $9, 0 
 
	addi $10, $0, 0xc0c0c0
	sw $10, 0($9)
	addi $9, $9, 8 
 
	addi $10, $0, 0xc0c0c0
	sw $10, 0($9)
	addi $9, $9, 504 
 
	addi $10, $0, 0xc0c0c0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0xc0c0c0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0xc0c0c0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0xc0c0c0
	sw $10, 0($9)
	addi $9, $9, 500 
 
	addi $10, $0, 0xc0c0c0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0xc0c0c0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0x0000cd
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0xc0c0c0
	sw $10, 0($9)
	addi $9, $9, 496 
 
	addi $10, $0, 0xc0c0c0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0xc0c0c0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0xc0c0c0
	sw $10, 0($9)
	addi $9, $9, 4 
 
	addi $10, $0, 0xc0c0c0
	sw $10, 0($9)
	addi $9, $9, 500 
	
	addi $10, $0, 0xc0c0c0
	sw $10, 0($9)
	addi $9, $9, 8
 
	addi $10, $0, 0xc0c0c0
	sw $10, 0($9)
	addi $9, $9, 12

#--------------------------------------------------------------------------------------------------------------#
#					CONTINUA A DESENHAR NO BACKGROUND		        	       #		
#--------------------------------------------------------------------------------------------------------------#		
	
	addi $16, $0, 1
	addi $17, $0, 8192

	lui $9, 0x1001
	addi $10, $0, 0x000000

	j 	digitar
