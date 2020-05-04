algoritmo "EXERCICIO-A"
Tipo
   DADOS = Registro
      NOME: Caractere
      END: Caractere
      TEL: Inteiro
   FimRegistro
var
   X,Y,SAIR,MENU: Inteiro
   PESQ,RESP,AUX: Caractere
   FLAG: Logico
   AGENDA: Vetor[1..10] de DADOS
inicio
   Repita
      EscrevaL("----- MENU DE OPÇÕES -----")
      EscrevaL("Digite [1] para CADASTRAR registros ")
      EscrevaL("Digite [2] para CLASSIFICIAR por nome")
      EscrevaL("Digite [3] para PESQUISAR por nome")
      EscrevaL("Digite [4] para APRESENTAR os registros")
      EscrevaL("Digite [5] para SAIR ")
      Leia(MENU)
      Escolha MENU
      Caso 1
         //ENTRADA DE DADOS: REGISTRO DA AGENDA
         EscrevaL("Registro:")
         Para X := 1 ate 10 faca
            EscrevaL("Registro",X,":")
            Escreva("Qual o nome?")
            Leia(AGENDA[X].NOME)
            Escreva("Qual o endereço?")
            Leia(AGENDA[X].END)
            Escreva("Qual o telefone?")
            Leia(AGENDA[X].TEL)
         FimPara
      Caso 2
         //ORDENAÇÃO: AGENDA.NOME
         Para X := 1 ate 9 faca
            Para Y := X+1 ate 10 faca
               Se AGENDA[X].NOME > AGENDA[Y].NOME entao
                  AUX := AGENDA[X].NOME
                  AGENDA[X].NOME := AGENDA[Y].NOME
                  AGENDA[Y].NOME := AUX
               FimSe
            FimPara
         FimPara
      Caso 3
         //PESQUISA-SEQUENCIAL: AGENDA.NOME
         RESP := "S"
         Enquanto Maiusc(RESP) = "S" faca
            EscrevaL("Qual o nome a ser pesquisado? ")
            Leia(PESQ)
            FLAG := falso
            X := 1
            Enquanto (X <= 10) e (FLAG = falso) faca
               Se PESQ = AGENDA[X].NOME entao
                  FLAG := verdadeiro
               Senao
                  X := X + 1
               FimSe
            FimEnquanto
            Se FLAG = verdadeiro entao
               EscrevaL(PESQ,", foi encontrado na posição:",X)
            Senao
               EscrevaL(PESQ,", não foi encontrado!")
            FimSe
            EscrevaL("Quer pesquisar novamente? (S/N):")
            Leia(RESP)
         FimEnquanto
      Caso 4
         //SAÍDA DE DADOS: AGENDA
         Para X := 1 ate 10 faca
            EscrevaL(AGENDA[X].NOME)
            EscrevaL(AGENDA[X].END)
            EscrevaL(AGENDA[X].TEL)
            EscrevaL()
         FimPara
      Caso 5
         //SAIR DO PROGRAMA
         SAIR := 5
      FimEscolha
   Ate SAIR = 5
fimalgoritmo