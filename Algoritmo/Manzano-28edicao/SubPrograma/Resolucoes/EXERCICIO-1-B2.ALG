algoritmo "EXERCICIO-B2"
Const
   FIM = 3
Tipo
   DADOS_ALUNOS = Registro
      NOME: Caractere
      NOTAB1: Real
      NOTAB2: Real
      NOTAB3: Real
      NOTAB4: Real
      STATUS: Caractere
      MDNB: Real
   FimRegistro
var
   ALUNO: Vetor[1..FIM] de DADOS_ALUNOS
   MENU: Inteiro

Funcao MEDIA(X:inteiro):real
Inicio
   Retorne (ALUNO[X].NOTAB1 + ALUNO[X].NOTAB2 + ALUNO[X].NOTAB3 + ALUNO[X].NOTAB4)/4
FimFuncao
Funcao SITUACAO(MEDIABI: Real):caractere
Inicio
   Se (MEDIABI >= 5) Entao
      Retorne "Aprovado"
   SeNao
      Retorne "Reprovado"
   FimSe
FimFuncao
Procedimento CADASTRAR
var
   X,Y: Inteiro
   AUX: Caractere
   AUX2:Real
Inicio
   Para X := 1 ate FIM faca
      Escreva("Qual o nome do aluno? ")
      Leia(ALUNO[X].NOME)
      Escreva("Qual a nota do 1o bimestre? ")
      Leia(ALUNO[X].NOTAB1)
      Escreva("Qual a nota do 2o bimestre? ")
      Leia(ALUNO[X].NOTAB2)
      Escreva("Qual a nota do 3o bimestre? ")
      Leia(ALUNO[X].NOTAB3)
      Escreva("Qual a nota do 4o bimestre? ")
      Leia(ALUNO[X].NOTAB4)
      Escreval()
      ALUNO[X].MDNB := MEDIA(X)
      ALUNO[X].STATUS := SITUACAO(ALUNO[X].MDNB)
   FimPara
   Para X := 1 ate FIM - 1 faca
      Para Y := X + 1 ate FIM faca
         Se ALUNO[X].NOME > ALUNO[Y].NOME Entao
            //TROCA DO NOME
            AUX := ALUNO[X].NOME
            ALUNO[X].NOME := ALUNO[Y].NOME
            ALUNO[Y].NOME := AUX
            //TROCA DO NOTAB1
            AUX2 := ALUNO[X].NOTAB1
            ALUNO[X].NOTAB1 := ALUNO[Y].NOTAB1
            ALUNO[Y].NOTAB1 := AUX2
            //TROCA DO NOTAB2
            AUX2 := ALUNO[X].NOTAB2
            ALUNO[X].NOTAB2 := ALUNO[Y].NOTAB2
            ALUNO[Y].NOTAB2 := AUX2
            //TROCA DO NOTAB3
            AUX2 := ALUNO[X].NOTAB3
            ALUNO[X].NOTAB3 := ALUNO[Y].NOTAB3
            ALUNO[Y].NOTAB3 := AUX2
            //TROCA DO NOTAB4
            AUX2 := ALUNO[X].NOTAB4
            ALUNO[X].NOTAB4 := ALUNO[Y].NOTAB4
            ALUNO[Y].NOTAB4 := AUX2
            //TROCA DO MDNB
            AUX2 := ALUNO[X].MDNB
            ALUNO[X].MDNB := ALUNO[Y].MDNB
            ALUNO[Y].MDNB := AUX2
            //TROCA DO STATUS
            AUX := ALUNO[X].STATUS
            ALUNO[X].STATUS := ALUNO[Y].STATUS
            ALUNO[Y].STATUS := AUX
         FimSe
      FimPara
   FimPara
FimProcedimento
Procedimento PESQUISAR
Var
   PESQ,RESP: Caractere
   PRIM, ULT: Inteiro
   MEIO: Real
   FLAG: Logico
Inicio
   RESP := "S"
   Enquanto Maiusc(RESP) = "S" faca
      EscrevaL("Qual o nome pesquisado? ")
      Leia(PESQ)
      PRIM := 1
      ULT := FIM
      FLAG := falso
      Enquanto (PRIM <= ULT) e (FLAG = falso) Faca
         MEIO := (PRIM + ULT)/2
         Se (PESQ = ALUNO[Int(MEIO)].NOME) entao
            FLAG := verdadeiro
         SeNao
            Se PESQ < ALUNO[Int(MEIO)].NOME entao
               ULT := Int(MEIO) - 1
            Senao
               PRIM := INt(MEIO) + 1
            FimSe
         FimSe
      FimEnquanto
      Se FLAG = verdadeiro entao
         EscrevaL("Nome: ",ALUNO[Int(MEIO)].NOME)
         EscrevaL("Média do aluno: ",ALUNO[Int(MEIO)].MDNB)
         EscrevaL("Situação: ",ALUNO[Int(MEIO)].STATUS)
      SeNao
         EscrevaL(" Nome não encontrado - tente novamente")
      FimSe
      Escreva("Gostaria de pesquisar novamente? (S/N)")
      Leia(RESP)
   FimEnquanto
FimProcedimento
Procedimento APRESENTAR_TD
Var
   X: inteiro
Inicio
   Para X := 1 ate FIM faca
      EscrevaL("Nome: ",ALUNO[X].NOME)
      EscrevaL("Média: ",ALUNO[X].MDNB)
      EscrevaL("Situação: ",ALUNO[X].STATUS)
      EscrevaL()
   FimPara
FimProcedimento
Procedimento APRESENTAR_AP
Var
   X: inteiro
Inicio
   Para X := 1 ate FIM faca
      Se ALUNO[X].STATUS = "Aprovado" Entao
         EscrevaL("Nome: ", ALUNO[X].NOME)
         EscrevaL("Média: ", ALUNO[X].MDNB)
         EscrevaL("Situação: ", ALUNO[X].STATUS)
      FimSe
      EscrevaL()
   FimPara
FimProcedimento
Procedimento APRESENTAR_RP
Var
   X: inteiro
Inicio
   Para X := 1 ate FIM faca
      Se ALUNO[X].STATUS = "Reprovado" Entao
         EscrevaL("Nome: ", ALUNO[X].NOME)
         EscrevaL("Média: ", ALUNO[X].MDNB)
         EscrevaL("Situação: ", ALUNO[X].STATUS)
      FimSe
      EscrevaL()
   FimPara
FimProcedimento
inicio
   CADASTRAR
   Repita
      EscrevaL("--- MENU DE OPÇÕES ---")
      EscrevaL("[1] CADASTRAR novos alunos")
      EscrevaL("[2] PESQUISAR por nome do aluno")
      EscrevaL("[3] APRESENTAR todos os alunos")
      EscrevaL("[4] APRESENTAR apenas os aprovados")
      EscrevaL("[5] APRESENTAR apenas os reprovados")
      EscrevaL("[6] SAIR do programa")
      Leia(MENU)
      Se (MENU > 0) e (MENU < 7) Entao
         Escolha MENU
         CASO 1
            CADASTRAR
         CASO 2
            PESQUISAR
         CASO 3
            APRESENTAR_TD
         CASO 4
            APRESENTAR_AP
         CASO 5
            APRESENTAR_RP
         CASO 6
         FimEscolha
      SeNao
      FimSe
   Ate MENU = 6
fimalgoritmo