algoritmo "Simulador de Dados RPG"
var
    opcao: inteiro
    resultado: inteiro
inicio
    enquanto (verdadeiro) faca
        escreva("\n=== Simulador de Dados ===")
        escreva("\n1 - Rolar dado 1d6")
        escreva("\n2 - Rolar dado 1d8")
        escreva("\n3 - Rolar dado 1d20")
        escreva("\n0 - Sair")
        escreva("\nEscolha uma opção: ")
        leia(opcao)

        escolha opcao
            caso 1:
                resultado <- (randomico() % 6) + 1
                escreva("Resultado do 1d6: ", resultado, "\n")
            caso 2:
                resultado <- (randomico() % 8) + 1
                escreva("Resultado do 1d8: ", resultado, "\n")
            caso 3:
                resultado <- (randomico() % 20) + 1
                escreva("Resultado do 1d20: ", resultado, "\n")
            caso 0:
                escreva("Saindo do programa. Até a próxima!\n")
                pare
            caso contrario:
                escreva("Opção inválida. Tente novamente.\n")
        fim_escolha
    fim_enquanto
fimalgoritmo
