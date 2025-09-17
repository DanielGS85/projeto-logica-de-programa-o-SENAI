programa {
   inclua biblioteca Util --> u
  const inteiro MaxHero= 3
  cadeia hero[MaxHero][3]
  inteiro totalhero = 0
  logico logado = falso
  cadeia heroatual = ""
  real xp[MaxHero] 
  inteiro sorteado

 funcao real sort(inteiro vi, inteiro vf){
    inteiro valor_inicial = vi
		inteiro valor_final = vf
		inteiro valor_sorteado 
		inteiro sorteios = 1

		para (inteiro i = 1; i <= sorteios; i++)
		{
			
			valor_sorteado = u.sorteia(valor_inicial, valor_final)
			
		}
    retorne valor_sorteado
    
  }

funcao CadastraraHerois(){
  se(totalhero >= MaxHero){
    escreva("Maximo de herois atingidos \n")
  }senao{
    escreva("O nome de seu Heroi e? \n")
    leia(hero[totalhero][0])
    escreva("Digite sua senha: \n")
    leia(hero[totalhero][1])
    xp[totalhero] = 0
    totalhero++
    escreva("heroi cadastrado com secesso!\n ")
  }
}

funcao logico login() {
    cadeia nome, senha
    para (inteiro tentativas = 1; tentativas <= 3; tentativas++) {
      escreva("Qual seu Login: ")
      leia(nome)
      escreva("Digite a senha: ")
      leia(senha)

      para (inteiro i = 0; i < totalhero; i++) {
        se (hero[i][0] == nome e hero[i][1] == senha) {
          heroatual = nome
          logado = verdadeiro
          escreva("Login efetuado com sucesso!\n")
          retorne verdadeiro
        }
      }

      se (tentativas < 3) {
        escreva("Heroi ou senha incorretos.\n")
        se (tentativas == 2) {
          escreva("Atenção!! Resta apenas uma tentativa!!\n")
        }
      }
    }

    escreva("Número máximo de tentativas atingido. Encerrando login.\n")
    retorne falso
  }

funcao inteiro encontrarIndiceHero(cadeia nome) {
    para (inteiro i = 0; i < totalhero; i++) {
      se (hero[i][0] == nome) {
        retorne i
      }
    }
    retorne -1
  }

 funcao real MenuTreino() {
    
    inteiro indice = encontrarIndiceHero(heroatual)
    se (indice == -1) {
      escreva("Erro: heroi não encontrado.\n")
      retorne 0
    }

    real opcao, exp
 
    faca {
      escreva("\nTipo de treino:\n")
      escreva("1 - fisico💪\n")
      escreva("2 - mana🧠\n")
      escreva("3 - resistencia🛡️\n")
      escreva("4 - Saindo do treinamento\n")
      escreva("Escolha uma opção: ")
      leia(opcao)

      escolha (opcao) {
        caso 1:
          sorteado = sort(0,60)
          escreva("Você realizou o treino e recebeu ==", sorteado, "== de xp")
          xp[indice] = xp[indice] + sorteado
          pare
        caso 2:
          sorteado = sort(0,40)
          escreva("Você realizou o treino e recebeu ==", sorteado, "== de xp")
          xp[indice] = xp[indice] + sorteado
          pare
        caso 3:
          sorteado = sort(0,70)
          escreva("Você realizou o treino e recebeu ==", sorteado, "== de xp")
          xp[indice] = xp[indice] + sorteado
          pare
        caso 4:
          escreva("Saindo do treinamento...\n")
          pare
        caso contrario:
          escreva("Opção inválida. Tente novamente.\n")
      }
    } enquanto (opcao != 4)  
    retorne xp[indice]
    escreva(xp[indice])
    
  }

funcao inteiro gerenciaXP (inteiro qtdXP){
   inteiro indice = encontrarIndiceHero(heroatual)
    se (indice == -1) {
      escreva("Erro: heroi não encontrado.\n")
      retorne 0
    }
     xp[indice] = xp[indice] + qtdXP
    se(xp[indice] <= 0){
      escreva("\n sua vida chegou a zero 💀💀💀")
      xp[indice] = 0
    }
    retorne xp[indice]
    
}

funcao real menuBatalha(){
  real opcao, xpAtual
  inteiro indice = encontrarIndiceHero(heroatual)
    se (indice == -1) {
      escreva("Erro: heroi não encontrado.\n")
      retorne 0
    }
    faca {
      escreva("\nAonde voce quer atacar:\n")
      escreva("1 - caverna goblin⚔️\n")
      escreva("2 - vila kobold⚔️\n")
      escreva("3 - aldeia orc⚔️\n")
      escreva("4 - saindo do ataque\n")
      escreva("Escolha uma opção: ")
      leia(opcao)

      escolha (opcao) {
        caso 1:
          sorteado = sort(-20,50)
          escreva("Você atacou esta area e recebeu ==", sorteado, "== de xp")
          xpAtual = gerenciaXP(sorteado)
         
          pare
        caso 2:
          sorteado = sort(-30,60)
          escreva("Você atacou esta area e recebeu ==", sorteado, "== de xp")
          xpAtual = gerenciaXP(sorteado)
          pare
        caso 3:
          sorteado = sort(-50,50)
          escreva("Você atacou esta area e recebeu ==", sorteado, "== de xp")
          xpAtual = gerenciaXP(sorteado)
          pare
        caso 4:
          escreva("Saindo da batalha...\n")
          
          pare
        caso contrario:
          escreva("Opção inválida. Tente novamente.\n")
      }
    } enquanto ( opcao !=4)  
  retorne xp[indice]
}

funcao real exibirqttxp() {
    inteiro indice = encontrarIndiceHero(heroatual)
    se (indice == -1) {
      escreva("Erro: usuário não encontrado.\n")
      retorne 0
    }

    escreva("Seu saldo atual é:  ", xp[indice], "\n")
    retorne xp[indice]
  }

funcao real menuLoja(){
   inteiro opcao, opcao2
   inteiro indice = encontrarIndiceHero(heroatual)
    se (indice == -1) {
      escreva("Erro: heroi não encontrado.\n")
      retorne 0
    }

    real opcao, exp

    faca {
      escreva("\nLoja\n")
      escreva("1 - espada🗡️ 1600\n")
      escreva("2 - arco🏹 1200\n")
      escreva("3 - escudo🛡️ 1500\n")
      escreva("4 - Saiindo do treinamento\n")
      escreva("Escolha uma opção: ")
      leia(opcao)

      escolha (opcao) {
        caso 1:
          escreva("Você comprou uma espada velha")
          xp[indice]= xp[indice] - 1600
          pare
        caso 2:
          escreva("Você comprou um arco surrado ")
          xp[indice] =  xp[indice] - 1200
          pare
        caso 3:
          escreva("Você comprou um escudo rachado")
          xp[indice]=  xp[indice] - 1500
          pare
        caso 4:
          escreva("Saindo da loja...\n")
          pare
        caso contrario:
          escreva("Opção inválida. Tente novamente.\n")
      }
    } enquanto (opcao != 4)  
  retorne 0
}

  funcao inicio() {
   inteiro soma
   inteiro opcao, opcao2
    faca {
      escreva("\n=== Bem-vindo a versao beta 00.1 do jogo ===\n")
      escreva("1 - Cadastro de heroi👑\n")
      escreva("2 - Fazer login\n")
      escreva("3 - Sair\n")
      escreva("Escolha uma opção: ")
      leia(opcao)

      escolha (opcao) {
        caso 1:
         CadastraraHerois()
          pare
        caso 2:
          se (login()) {
            faca{
              escreva("\n=== oq voce deseja fazer? ===\n")
              escreva("1 - treino 💪\n")
              escreva("2 - atacar⚔️\n")
              escreva("3 - xp total✨\n") 
              escreva("4 - loja💸\n") 
              escreva("5 - sair\n")
              escreva("Escolha uma opção: ")
              leia(opcao2)

              escolha (opcao2){
              caso 1:
              MenuTreino()
              pare
              caso 2:
              menuBatalha()
              pare
              caso 3:
              exibirqttxp()
              pare
              caso 4:
              menuLoja()
              pare
              caso 5:
              escreva("saindo...")
              logado = falso
              pare
              escreva("Opção inválida.\n")
              }
            }enquanto(logado)
          }
          pare
        caso 3:
          escreva("Encerrando o programa.\n")
          
          pare
        caso contrario:
          escreva("Opção inválida.\n")
      }
    } enquanto (opcao != 5)

  }
}