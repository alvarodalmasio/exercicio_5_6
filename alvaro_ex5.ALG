//5) Um grupo de amigos organiza uma série de apostas em jogos e registra
//os pontos obtidos em uma matriz, onde cada linha é um amigo e cada coluna,
//um jogo. Desenvolva um programa que, dada essa matriz, calcule o total de
//pontos para cada amigo. Utilize uma função que percorra a matriz e retorne
//um vetor com a pontuação total de cada um.


algoritmo "Exercicio 5"
var
    pontos: vetor[1..100, 1..50] de inteiro
    totais: vetor[1..100] de inteiro
    numAmigos, numJogos, i, j: inteiro

funcao calcularPontuacaoAmigo(amigo: inteiro; numJogos: inteiro): inteiro
var
    j, soma: inteiro
inicio
    soma := 0
    para j de 1 ate numJogos faca
        soma := soma + pontos[amigo, j]
    fimpara
    retorne soma
fimfuncao

inicio
    escreval("Digite o número de amigos (até 100): ")
    leia(numAmigos)
    escreval("Digite o número de jogos (até 50): ")
    leia(numJogos)

    para i de 1 ate numAmigos faca
        escreval("Pontos do amigo ", i, " em cada jogo:")
        para j de 1 ate numJogos faca
            escreva("Digite os pontos no jogo ", j, ": ")
            leia(pontos[i, j])
        fimpara
    fimpara

    para i de 1 ate numAmigos faca
        totais[i] := calcularPontuacaoAmigo(i, numJogos)
    fimpara

    escreval("Total de pontos de cada amigo:")
    para i de 1 ate numAmigos faca
        escreval("Amigo ", i, ": Pontuação total = ", totais[i])
    fimpara
fimalgoritmo