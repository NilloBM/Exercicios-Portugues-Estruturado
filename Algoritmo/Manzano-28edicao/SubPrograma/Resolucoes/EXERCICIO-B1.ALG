algoritmo "EXERCICIO-B1"
Const
   FIM = 2
Tipo
   DADOS_ALUNOS = Registro
      NOME: Caractere
      NOTAB1: Real
      NOTAB2: Real
      NOTAB3: Real
      NOTAB4: Real
   FimRegistro
var
   ALUNO: Vetor[1..FIM] de DADOS_ALUNOS
   MENU: Inteiro
   MD_NOTAS_B: Real
Procedimento CADASTRAR
var
   X,Y: Inteiro
   AUX: Caractere
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
   FimPara
   Para X := 1 ate FIM - 1 faca
      Para Y := X + 1 ate FIM faca
         Se ALUNO[X].NOME > ALUNO[Y].NOME Entao
            //TROCA DO NOME
            AUX := ALUNO[X].NOME
            ALUNO[X].NOME := ALUNO[Y].NOME
            ALUNO[Y].NOME := AUX
            //TROCA DO NOTAB1
            AUX := ALUNO[X].NOTAB1
            ALUNO[X].NOTAB1 := ALUNO[Y].NOTAB1
            ALUNO[Y].NOTAB1 := AUX
            //TROCA DO NOTAB2
            AUX := ALUNO[X].NOTAB2
            ALUNO[X].NOTAB2 := ALUNO[Y].NOTAB2
            ALUNO[Y].NOTAB2 := AUX
            //TROCA DO NOTAB3
            AUX := ALUNO[X].NOTAB3
            ALUNO[X].NOTAB3 := ALUNO[Y].NOTAB3
            ALUNO[Y].NOTAB3 := AUX
            //TROCA DO NOTAB4
            AUX := ALUNO[X].NOTAB4
            ALUNO[X].NOTAB4 := ALUNO[Y].NOTAB4
            ALUNO[Y].NOTAB4 := AUX
         FimSe
      FimPara
   FimPara
FimProcedimento
Funcao MEDIA(var MEDIA_NB: real;B1,B2,B3,B4:real):real
Inicio
   MEDIA_NB := (B1+B2+B3+B4)/4
   Retorne MEDIA_NB
FimFuncao
Funcao SITUACAO(MEDIA_NB: Real):caractere
Inicio
   Se (MEDIA_NB >= 5) Entao
      Retorne "Aprovado"
   SeNao
      Retorne "Reprovado"
   FimSe
FimFuncao
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
         EscrevaL("Média do aluno: ",MEDIA(MD_NOTAS_B,ALUNO[Int(MEIO)].NOTAB1,ALUNO[Int(MEIO)].NOTAB2,ALUNO[Int(MEIO)].NOTAB3,ALUNO[Int(MEIO)].NOTAB4))
         EscrevaL("Situação: ",SITUACAO(MD_NOTAS_B))
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
      EscrevaL("Média: ",MEDIA(MD_NOTAS_B,ALUNO[X].NOTAB1,ALUNO[X].NOTAB2,ALUNO[X].NOTAB3,ALUNO[X].NOTAB4))
      EscrevaL("Situação: ",SITUACAO(MD_NOTAS_B))
      EscrevaL()
   FimPara
FimProcedimento
Procedimento APRESENTAR_AP
Var
   X: inteiro
Inicio
   Para X := 1 ate FIM faca
      MD_NOTAS_B := MEDIA(MD_NOTAS_B,ALUNO[X].NOTAB1,ALUNO[X].NOTAB2,ALUNO[X].NOTAB3,ALUNO[X].NOTAB4))
      Se SITUACAO(MD_NOTAS_B) = "Aprovado" Entao
         EscrevaL("Nome: ",ALUNO[X].NOME)
         EscrevaL("Média: ", MD_NOTAS_B)
         EscrevaL("Situação: ",SITUACAO(MD_NOTAS_B))
      FimSe
      EscrevaL()
   FimPara
FimProcedimento
Procedimento APRESENTAR_RP
Var
   X: inteiro
Inicio
   Para X := 1 ate FIM faca
      MD_NOTAS_B := MEDIA(MD_NOTAS_B,ALUNO[X].NOTAB1,ALUNO[X].NOTAB2,ALUNO[X].NOTAB3,ALUNO[X].NOTAB4))
      Se SITUACAO(MD_NOTAS_B) = "Reprovado" Entao
         EscrevaL("Nome: ",ALUNO[X].NOME)
         EscrevaL("Média: ", MD_NOTAS_B)
         EscrevaL("Situação: ",SITUACAO(MD_NOTAS_B))
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