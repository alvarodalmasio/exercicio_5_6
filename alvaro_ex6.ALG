//6) Uma empresa deseja monitorar o desempenho mensal de seus funcion�rios,
//registrando a quantidade de vendas realizadas por cada um ao longo de
//v�rios meses em uma matriz, onde cada linha representa um funcion�rio e
//cada coluna, um m�s. Escreva um programa que, dada essa matriz, calcule a
//m�dia de vendas de cada funcion�rio. Crie uma fun��o que percorra a matriz
//e retorne um vetor com as m�dias de vendas para cada funcion�rio.

algoritmo "exercicio 6"
var
    qtdFuncionarios, qtdMeses: inteiro
    matriz : vetor[1..100, 1..100] de inteiro
    medias : vetor[1..100] de real
    i, j : inteiro

funcao calcular_media(funcionario : inteiro) : real
var
    soma, k : inteiro
inicio
    soma <- 0
    para k de 1 ate qtdMeses faca
        soma <- soma + matriz[funcionario, k]
    fimpara
    retorne soma / qtdMeses
fimfuncao

inicio

    escreva("Informe a quantidade de funcion�rios: ")
    leia(qtdFuncionarios)

    escreva("Informe a quantidade de meses: ")
    leia(qtdMeses)

    para i de 1 ate qtdFuncionarios faca
        escreval("Funcion�rio ", i, ":")
        para j de 1 ate qtdMeses faca
            escreva("Digite o n�mero de vendas no m�s ", j, ": ")
            leia(matriz[i, j])
        fimpara
    fimpara

    para i de 1 ate qtdFuncionarios faca
        medias[i] <- calcular_media(i)
    fimpara

    escreval("M�dia de vendas de cada funcion�rio:")
    para i de 1 ate qtdFuncionarios faca
        escreval("Funcion�rio ", i, ": ", medias[i]:4:2)
    fimpara

fimalgoritmo
