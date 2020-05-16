algoritmo "EXERCICIO-C"
Const
   FIM = 3
Tipo
   DADOS_PESSOAS = Registro
      NOME : Caractere
      ALT: Real
   FimRegistro
var
   PESSOA: Vetor[1..FIM] de DADOS_PESSOAS
   MENU: inteiro
   MDALT: Real
Funcao MEDIA(X:inteiro):real
Inicio
   Retorne PESSOA[X].ALT/FIM
FimFuncao
Procedimento CADASTRAR
Var
   X: inteiro
Inicio
   MDALT := 0
   Para X := 1 ate FIM faca
      Escreva("Escreva o nome: ")
      Leia(PESSOA[X].NOME)
      Escreva("Escreva a altura (x,xx):")
      Leia(PESSOA[X].ALT)
      EscrevaL()
      MDALT := MDALT + MEDIA(X)
   Fimpara
FimProcedimento
Procedimento APRESENTAR2
Var
   X,C: inteiro
Inicio
   Para X := 1 ate FIM faca
      Se PESSOA[X].ALT <= 1.5 Entao
         EscrevaL("Nome: ",PESSOA[X].NOME)
         EscrevaL("Altura: ",PESSOA[X].ALT)
         EscrevaL()
         C := C + 1
      FimSe
   FimPara
   Se C = 0 entao
      EscrevaL("NÃO HÁ PESSOAS MENORES OU IGUAIS A 1.5M DE ALTURA")
   FimSe
FimProcedimento
Procedimento APRESENTAR3
Var
   X,C: inteiro
Inicio
   Para X := 1 ate FIM faca
      Se PESSOA[X].ALT > 1.5 Entao
         EscrevaL("Nome: ",PESSOA[X].NOME)
         EscrevaL("Altura: ",PESSOA[X].ALT)
         EscrevaL()
         C := C + 1
      FimSe
   FimPara
   Se C = 0 entao
      EscrevaL("NÃO HÁ PESSOAS MAIORES QUE 1.5M DE ALTURA")
   FimSe
FimProcedimento
Procedimento APRESENTAR4
Var
   X,C: inteiro
Inicio
   Para X := 1 ate FIM faca
      Se (PESSOA[X].ALT > 1.5) e (PESSOA[X].ALT < 2)Entao
         EscrevaL("Nome: ",PESSOA[X].NOME)
         EscrevaL("Altura: ",PESSOA[X].ALT)
         EscrevaL()
         C := C + 1
      FimSe
   FimPara
   Se C = 0 entao
      EscrevaL("NÃO HÁ PESSOAS MAIORES QUE 1.5M E MENORES QUE 2M DE ALTURA")
   FimSe
FimProcedimento
Procedimento APRESENTAR_MD
Inicio
   EscrevaL("MÉDIA DE TODAS AS ALTURAS REGISTRADAS:",MDALT)
FimProcedimento
inicio
   CADASTRAR
   Repita
      EscrevaL("--- MENU DE OPÇÕES ---")
      EscrevaL("[1] CADASTRAR registros")
      EscrevaL("[2] APRESENTAR registros <= 1.5m")
      EscrevaL("[3] APRESENTAR registros > 1.5m")
      EscrevaL("[4] APRESENTAR registros > 1.5m e < 2m")
      EscrevaL("[5] APRESENTAR média das alturas")
      EscrevaL("[6] SAIR do programa")
      Leia(MENU)
      Se (MENU >= 1) E (MENU <= 6) entao
         Escolha MENU
         CASO 1
            CADASTRAR
         CASO 2
            APRESENTAR2
         CASO 3
            APRESENTAR3
         CASO 4
            APRESENTAR4
         CASO 5
            APRESENTAR_MD
         CASO 6
         FimEscolha
      Senao
         EscrevaL(" Opção inválida - tente novamente!")
      FimSe
   Ate MENU = 6
fimalgoritmo