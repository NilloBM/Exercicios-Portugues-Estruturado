algoritmo "EXERCICIO-B"

Tipo//OBS: Visualg não aceita Vetor no registro.
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
var//OBS: O COMANDO DO EXERCÍCIO DETERMINOU 20 REGISTROS, PORÉM
   //COLOQUEI 3 REGISTROS PARA FACILITAR O TESTE.
   ALUNO: Vetor[1..3] de DADOS_BI
   X,Y,MENU,COMEC,FIM,SAIR: Inteiro
   MEIO,AUX2: Real
   AUX,PESQ,RESP: Caractere
   FLAG: logico
inicio
   Repita
      EscrevaL("---- MENU DE OPÇÕES ----")
      EscrevaL("Digite [1] para CADASTRAR os registros")
      EscrevaL("Digite [2] para PESQUISAR os alunos")
      EscrevaL("Digite [3] para APRESENTAR os registros")
      EscrevaL("Digite [4] para SAIR")
      Leia(MENU)
      Escolha MENU
      //ENTRADA DE DADOS: ALUNO & ORDENAÇÃO CRESCENTE: ALUNO.NOME
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
                  //ORDENAÇÃO DO NOME
                  AUX := ALUNO[X].NOME
                  ALUNO[X].NOME := ALUNO[Y].NOME
                  ALUNO[Y].NOME := AUX
                  //ORDENAÇÃO DA NOTA1
                  AUX2 := ALUNO[X].NOTA1
                  ALUNO[X].NOTA1 := ALUNO[Y].NOTA1
                  ALUNO[Y].NOTA1 := AUX2
                  //ORDENAÇÃO DA NOTA2
                  AUX2 := ALUNO[X].NOTA2
                  ALUNO[X].NOTA2 := ALUNO[Y].NOTA2
                  ALUNO[Y].NOTA2 := AUX2
                  //ORDENAÇÃO DA NOTE3
                  AUX2 := ALUNO[X].NOTA3
                  ALUNO[X].NOTA3 := ALUNO[Y].NOTA3
                  ALUNO[Y].NOTA3 := AUX2
                  //ORDENAÇÃO DA NOTA4
                  AUX2 := ALUNO[X].NOTA4
                  ALUNO[X].NOTA4 := ALUNO[Y].NOTA4
                  ALUNO[Y].NOTA4 := AUX2
                  //ORDENAÇÃO DA MD_BI
                  AUX2 := ALUNO[X].MD_BI
                  ALUNO[X].MD_BI := ALUNO[Y].MD_BI
                  ALUNO[Y].MD_BI := AUX2
                  //ORDENAÇÃO DO STATUS
                  AUX := ALUNO[X].STATUS
                  ALUNO[X].STATUS := ALUNO[Y].STATUS
                  ALUNO[Y].STATUS := AUX
               FimSe
            FimPara
         FimPara
      //PESQUISA-BINÁRIA: ALUNO.NOME
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
            //SAÍDA DE DADOS DA PESQUISA: NOME PESQUISADO + MÉDIA + APROVADO/REPROVADO
            Se FLAG = verdadeiro entao
               ALUNO[int(MEIO)].MD_BI := (ALUNO[Int(MEIO)].NOTA1 + ALUNO[Int(MEIO)].NOTA2 + ALUNO[Int(MEIO)].NOTA3 + ALUNO[Int(MEIO)].NOTA4)/4
               Se ALUNO[int(MEIO)].MD_BI >= 5 entao
                  ALUNO[Int(MEIO)].STATUS := "Aprovado!"
                  EscrevaL("Aluno: ",ALUNO[Int(MEIO)].NOME)
                  EscrevaL("Média:",ALUNO[int(MEIO)].MD_BI)
                  EscrevaL("Situação: ",ALUNO[Int(MEIO)].STATUS)
               Senao
                  ALUNO[Int(MEIO)].STATUS := "Reprovado!"
                  EscrevaL("Aluno: ",ALUNO[Int(MEIO)].NOME)
                  EscrevaL("Média:",ALUNO[int(MEIO)].MD_BI)
                  EscrevaL("Situação: ",ALUNO[Int(MEIO)].STATUS)
               FimSe
            Senao
               EscrevaL(PESQ,", não foi encontrado!")
            FimSe
            EscrevaL("Pesquisar novamente? (S/N):")
            Leia(RESP)
         FimEnquanto
      //SAÍDA DE DADOS
      CASO 3
         Para X := 1 ate 3 faca
            EscrevaL("NOME: ", ALUNO[X].NOME)
            EscrevaL("NOTA1: ", ALUNO[X].NOTA1)
            EscrevaL("NOTA2: ", ALUNO[X].NOTA2)
            EscrevaL("NOTA3: ", ALUNO[X].NOTA3)
            EscrevaL("NOTA4: ", ALUNO[X].NOTA4)
            EscrevaL("MÉDIA: ", ALUNO[X].MD_BI)
            EscrevaL("SITUAÇÃO: ", ALUNO[X].STATUS)
            EscrevaL()
         FimPara
      //SAIR DO PROGRAMA
      OUTROCASO
         SAIR := 4
      FimEscolha
   Ate SAIR = 4
fimalgoritmo