//6) Uma empresa deseja monitorar o desempenho mensal de seus funcionários,
//registrando a quantidade de vendas realizadas por cada um ao longo de
//vários meses em uma matriz, onde cada linha representa um funcionário e
//cada coluna, um mês. Escreva um programa que, dada essa matriz, calcule a
//média de vendas de cada funcionário. Crie uma função que percorra a matriz
//e retorne um vetor com as médias de vendas para cada funcionário.

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

    escreva("Informe a quantidade de funcionários: ")
    leia(qtdFuncionarios)

    escreva("Informe a quantidade de meses: ")
    leia(qtdMeses)

    para i de 1 ate qtdFuncionarios faca
        escreval("Funcionário ", i, ":")
        para j de 1 ate qtdMeses faca
            escreva("Digite o número de vendas no mês ", j, ": ")
            leia(matriz[i, j])
        fimpara
    fimpara

    para i de 1 ate qtdFuncionarios faca
        medias[i] <- calcular_media(i)
    fimpara

    escreval("Média de vendas de cada funcionário:")
    para i de 1 ate qtdFuncionarios faca
        escreval("Funcionário ", i, ": ", medias[i]:4:2)
    fimpara

fimalgoritmo
