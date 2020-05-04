algoritmo "EXERCICIO-A"
Tipo
   REG_AGENDA = Registro
      NOME: Caractere
      END: Caractere
      TEL: Inteiro
   FimRegistro
var
   X,Y: Inteiro
   PESQ,RESP,AUX: Caractere
   FLAG: Logico
   AGENDA: Vetor[1..10] de REG_AGENDA
inicio
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
   FImPara
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

fimalgoritmo