algoritmo "EXERCICIO-C"
Tipo
   REG_DADOS = Registro:
      NOME: Caractere
      ALT: Real
   FimRegistro
var
   PESSOAS: Vetor[1..3] de REG_DADOS
   X,Y,MENU: inteiro
   MD_ALT: real
   SAIR: Caractere
inicio
   Repita
      EscrevaL("---- MENU DE OPÇÕES ----")
      EscrevaL("Digite [1] para CADASTRAR")
      EscrevaL("Digite [2] APRESENTAR pessoas < 1.5M")
      EscrevaL("Digite [3] APRESENTAR pessoas > 1.5M")
      EscrevaL("Digite [4] APRESENTAR pessoas > 1.5M e < 2.0M")
      EscrevaL("Digite [5] MÉDIA todas as alturas")
      EscrevaL("Digite [6] para SAIR do programa")
      Leia(MENU)
      Escolha MENU
      CASO 1
         LIMPATELA
         Para X := 1 ate 3 faca
            Escreva("Digite o nome: ")
            Leia(PESSOAS[X].NOME)
            Escreva("Digite a altura: ")
            Leia(PESSOAS[X].ALT)
            EscrevaL()
            MD_ALT := MD_ALT + PESSOAS[X].ALT/3
         FimPara
      CASO 2
         LIMPATELA
         X := 1
         Se PESSOAS[X].NOME = "" entao
            EscrevaL("CADASTRE, primeiro!")
            EscrevaL()
         Senao
            Para X := 1 ate 3 faca
               Se PESSOAS[X].ALT < 1.5 entao
                  EscrevaL(PESSOAS[X].NOME)
                  EscrevaL(PESSOAS[X].ALT)
                  EscrevaL()
               FimSe
            FimPara
         FimSe
      CASO 3
         LIMPATELA
         X := 1
         Se PESSOAS[X].NOME = "" entao
            EscrevaL("CADASTRE, primeiro!")
            EscrevaL()
         Senao
            Para X := 1 ate 3 faca
               Se PESSOAS[X].ALT > 1.5 entao
                  EscrevaL(PESSOAS[X].NOME)
                  EscrevaL(PESSOAS[X].ALT)
                  EscrevaL()
               FimSe
            FimPara
         FimSe
      CASO 4
         LIMPATELA
         X := 1
         Se PESSOAS[X].NOME = "" entao
            EscrevaL("CADASTRE, primeiro!")
            EscrevaL()
         Senao
            Para X := 1 ate 3 faca
               Se (PESSOAS[X].ALT > 1.5) e (PESSOAS[X].ALT < 2.0)entao
                  EscrevaL(PESSOAS[X].NOME)
                  EscrevaL(PESSOAS[X].ALT)
                  EscrevaL()
               FimSe
            FimPara
         FimSe
      CASO 5
         LIMPATELA
         X := 1
         Se PESSOAS[X].NOME = "" entao
            EscrevaL("CADASTRE, primeiro!")
            EscrevaL()
         Senao
            EscrevaL("A MÉDIAS DE TODAS AS ALTURAS É:", MD_ALT)
            EscrevaL()
         FimSe
      OUTROCASO
         SAIR := "S"
      FimEscolha
   Ate SAIR = "S"
fimalgoritmo