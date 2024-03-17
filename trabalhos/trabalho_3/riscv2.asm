.data
minha_string:
    .asciiz "hello, world!"
nova_string:
    .space 14  # Espaço para a nova string em maiúsculas

.text


_start:
    # Inicialize os registradores
    la a0, minha_string  # Carregue o endereço da string em a0
    la a1, nova_string   # Carregue o endereço da nova string em a1
    li a2, 0            # Inicialize um contador para a posição atual na string

loop:
    lb a3, 0(a0)        # Carregue o próximo caractere da string em a3
    beqz a3, done       # Se for o caractere nulo, termine o loop

    # Verifique se o caractere está em minúsculas (entre 'a' e 'z')
    li t0, 'a'
    blt a3, t0, not_lowercase
    li t0, 'z'
    bgt a3, t0, not_lowercase

    # Se o caractere for minúsculo, converta-o para maiúsculo
    li t0, 'A'
    sub a3, a3, t0

not_lowercase:
    # Armazene o caractere atual na nova string
    sb a3, 0(a1)

    # Atualize os ponteiros para as próximas posições nas strings
    addi a0, a0, 1
    addi a1, a1, 1
    addi a2, a2, 1

    # Continue o loop
    j loop

done:
    # Imprima a nova string
    li a7, 4            # Código de syscall para imprimir
    li a0, 1            # Descritor de arquivo (stdout)
    la a1, nova_string  # Endereço da nova string
    li a2, 16           # Comprimento da nova string
    ecall

    # Encerre o programa
    li a7, 93           # Syscall para encerrar o programa
    ecall
