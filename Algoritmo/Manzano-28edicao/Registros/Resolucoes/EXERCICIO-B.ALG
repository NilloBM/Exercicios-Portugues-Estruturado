algoritmo "EXERCICIO-B"

Tipo//OBS: Visualg n�o aceita Vetor no registro.
    //DECLARARIA:
    //... Em - Tipo -> Registro -> NOTAS_BI: Vetor[1..4] de real
    //LEITURA, na entrada de dados:
    //... Para Y := 1 ate 4 faca
    //         Escreva("Qual a",Y,"a nota do bimestre? ")
    //         Leia(ALUNO[X].NOTAS_BI[Y])
    //    FimPara
   DADOS_BI = Registro
      NOME: Caractere
      NOTA1: Real
      NOTA2: Real
      NOTA3: Real
      NOTA4: Real
      MD_BI: Real
      STATUS: Caractere
   FimRegistro
var//OBS: O COMANDO DO EXERC�CIO DETERMINOU 20 REGISTROS, POR�M
   //COLOQUEI 3 REGISTROS PARA FACILITAR O TESTE.
   ALUNO: Vetor[1..3] de DADOS_BI
   X,Y,MENU,COMEC,FIM,SAIR: Inteiro
   MEIO,AUX2: Real
   AUX,PESQ,RESP: Caractere
   FLAG: logico
inicio
   Repita
      EscrevaL("---- MENU DE OP��ES ----")
      EscrevaL("Digite [1] para CADASTRAR os registros")
      EscrevaL("Digite [2] para PESQUISAR os alunos")
      EscrevaL("Digite [3] para APRESENTAR os registros")
      EscrevaL("Digite [4] para SAIR")
      Leia(MENU)
      Escolha MENU
      //ENTRADA DE DADOS: ALUNO & ORDENA��O CRESCENTE: ALUNO.NOME
      CASO 1
         Para X := 1 ate 3 faca
            Escreva("Qual o nome do aluno? ")
            Leia(ALUNO[X].NOME)
            Escreva("Qual a 1a nota do bimestre? ")
            Leia(ALUNO[X].NOTA1)
            Escreva("Qual a 2a nota do bimestre? ")
            Leia(ALUNO[X].NOTA2)
            Escreva("Qual a 3a nota do bimestre? ")
            Leia(ALUNO[X].NOTA3)
            Escreva("Qual a 4a nota do bimestre? ")
            Leia(ALUNO[X].NOTA4)
         FimPara
         Para X := 1 ate 2 faca
            Para Y := X+1 ate 3 faca
               Se ALUNO[X].NOME > ALUNO[Y].NOME entao
                  //ORDENA��O DO NOME
                  AUX := ALUNO[X].NOME
                  ALUNO[X].NOME := ALUNO[Y].NOME
                  ALUNO[Y].NOME := AUX
                  //ORDENA��O DA NOTA1
                  AUX2 := ALUNO[X].NOTA1
                  ALUNO[X].NOTA1 := ALUNO[Y].NOTA1
                  ALUNO[Y].NOTA1 := AUX2
                  //ORDENA��O DA NOTA2
                  AUX2 := ALUNO[X].NOTA2
                  ALUNO[X].NOTA2 := ALUNO[Y].NOTA2
                  ALUNO[Y].NOTA2 := AUX2
                  //ORDENA��O DA NOTE3
                  AUX2 := ALUNO[X].NOTA3
                  ALUNO[X].NOTA3 := ALUNO[Y].NOTA3
                  ALUNO[Y].NOTA3 := AUX2
                  //ORDENA��O DA NOTA4
                  AUX2 := ALUNO[X].NOTA4
                  ALUNO[X].NOTA4 := ALUNO[Y].NOTA4
                  ALUNO[Y].NOTA4 := AUX2
                  //ORDENA��O DA MD_BI
                  AUX2 := ALUNO[X].MD_BI
                  ALUNO[X].MD_BI := ALUNO[Y].MD_BI
                  ALUNO[Y].MD_BI := AUX2
                  //ORDENA��O DO STATUS
                  AUX := ALUNO[X].STATUS
                  ALUNO[X].STATUS := ALUNO[Y].STATUS
                  ALUNO[Y].STATUS := AUX
               FimSe
            FimPara
         FimPara
      //PESQUISA-BIN�RIA: ALUNO.NOME
      CASO 2
         RESP := "S"
         Enquanto Maiusc(RESP) = "S" faca
            EscrevaL("Qual o nome a ser pesquisado? ")
            Leia(PESQ)
            FLAG := falso
            COMEC := 1
            FIM := 3
            Enquanto (COMEC <= FIM) e (FLAG = falso) faca
               MEIO := (COMEC + FIM)/2
               Se PESQ = (ALUNO[int(MEIO)].NOME) entao
                  FLAG := verdadeiro
               SeNao
                  Se PESQ < (ALUNO[int(MEIO)].NOME) entao
                     FIM := Int(MEIO) - 1
                  Senao
                     COMEC := Int(MEIO) + 1
                  FimSe
               FimSe
            FimEnquanto
            //SA�DA DE DADOS DA PESQUISA: NOME PESQUISADO + M�DIA + APROVADO/REPROVADO
            Se FLAG = verdadeiro entao
               ALUNO[int(MEIO)].MD_BI := (ALUNO[Int(MEIO)].NOTA1 + ALUNO[Int(MEIO)].NOTA2 + ALUNO[Int(MEIO)].NOTA3 + ALUNO[Int(MEIO)].NOTA4)/4
               Se ALUNO[int(MEIO)].MD_BI >= 5 entao
                  ALUNO[Int(MEIO)].STATUS := "Aprovado!"
                  EscrevaL("Aluno: ",ALUNO[Int(MEIO)].NOME)
                  EscrevaL("M�dia:",ALUNO[int(MEIO)].MD_BI)
                  EscrevaL("Situa��o: ",ALUNO[Int(MEIO)].STATUS)
               Senao
                  ALUNO[Int(MEIO)].STATUS := "Reprovado!"
                  EscrevaL("Aluno: ",ALUNO[Int(MEIO)].NOME)
                  EscrevaL("M�dia:",ALUNO[int(MEIO)].MD_BI)
                  EscrevaL("Situa��o: ",ALUNO[Int(MEIO)].STATUS)
               FimSe
            Senao
               EscrevaL(PESQ,", n�o foi encontrado!")
            FimSe
            EscrevaL("Pesquisar novamente? (S/N):")
            Leia(RESP)
         FimEnquanto
      //SA�DA DE DADOS
      CASO 3
         Para X := 1 ate 3 faca
            EscrevaL("NOME: ", ALUNO[X].NOME)
            EscrevaL("NOTA1: ", ALUNO[X].NOTA1)
            EscrevaL("NOTA2: ", ALUNO[X].NOTA2)
            EscrevaL("NOTA3: ", ALUNO[X].NOTA3)
            EscrevaL("NOTA4: ", ALUNO[X].NOTA4)
            EscrevaL("M�DIA: ", ALUNO[X].MD_BI)
            EscrevaL("SITUA��O: ", ALUNO[X].STATUS)
            EscrevaL()
         FimPara
      //SAIR DO PROGRAMA
      OUTROCASO
         SAIR := 4
      FimEscolha
   Ate SAIR = 4
fimalgoritmo