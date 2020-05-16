algoritmo "EXERCICIO-D"
Const
   FIM = 3
Tipo
   REG_FUNC = registro
      NOME: Caractere
      MATRICULA: inteiro
      SALARIO: Real
   FimRegistro
var
   MENU: inteiro
   FUNC: Vetor[1..FIM] de REG_FUNC
Procedimento CADASTRAR
var
   X: inteiro
Inicio
   Para X := 1 ate FIM faca
      Escreva("Qual o nome? ")
      Leia(FUNC[X].NOME)
      Escreva("Qual a matrícula? ")
      Leia(FUNC[X].MATRICULA)
      Escreva("Qual o salário? ")
      Leia(FUNC[X].SALARIO)
      EscrevaL()
   FimPara
FimProcedimento
Procedimento CLASSIFICAR
Var
   X,Y, AUX1: inteiro
   AUX2: Caractere
   AUX3: real
Inicio
   Para X := 1 ate FIM - 1 faca
      Para Y := X+1 ate FIM faca
         Se FUNC[X].MATRICULA > FUNC[Y].MATRICULA Entao
            //TROCAR MATRICULA
            AUX1 := FUNC[X].MATRICULA
            FUNC[X].MATRICULA := FUNC[Y].MATRICULA
            FUNC[Y].MATRICULA := AUX1
            //TROCAR NOME
            AUX2 := FUNC[X].NOME
            FUNC[X].NOME := FUNC[Y].NOME
            FUNC[Y].NOME := AUX2
            //TROCAR SALÁRIO
            AUX3 := FUNC[X].SALARIO
            FUNC[X].SALARIO := FUNC[Y].SALARIO
            FUNC[Y].SALARIO := AUX3
         FimSe
      FimPara
   FimPara
FimProcedimento
Procedimento PESQUISAR
Var
   PESQ,INIC,ULT: inteiro
   MEIO: Real
   RESP: Caractere
   FLAG: logico
Inicio
   CLASSIFICAR
   RESP := "S"
   Enquanto Maiusc(RESP) = "S" faca
      Escreva("Qual o número da matrícula? ")
      Leia(PESQ)
      INIC := 1
      ULT := FIM
      FLAG := falso
      Enquanto (INIC <= ULT) e (FLAG = falso) faca
         MEIO := (INIC + ULT)/2
         Se PESQ = FUNC[Int(MEIO)].MATRICULA entao
            FLAG := verdadeiro
         SeNao
            Se PESQ < FUNC[Int(MEIO)].MATRICULA Entao
               ULT := int(MEIO) - 1
            SeNao
               INIC := Int(MEIO) + 1
            FimSe
         FimSe
      FimEnquanto
      Se FLAG = verdadeiro Entao
         EscrevaL("Matrícula: ",FUNC[Int(MEIO)].MATRICULA)
         EscrevaL("Nome:      ",FUNC[Int(MEIO)].NOME)
         EscrevaL("Salário:   ",FUNC[Int(MEIO)].SALARIO)
      SeNao
         EscrevaL(PESQ," não foi encontrado!")
      FimSe
      EscrevaL("Quer pesquisar novamente? (S/N)")
      Leia(RESP)
   FimEnquanto
FimProcedimento
Procedimento APRESENTAR1
Var
   X,C: inteiro
Inicio
   Para X := 1 ate FIM faca
      Se FUNC[X].SALARIO > 1000 Entao
         EscrevaL("Matrícula:",FUNC[X].MATRICULA)
         EscrevaL("Nome:      ",FUNC[X].NOME)
         EscrevaL("Salário:  $",FUNC[X].SALARIO)
         EscrevaL()
         C := C + 1
      FimSe
   FimPara
   Se C = 0 entao
      EscrevaL("NÃO HÁ SALÁRIOS > $1.000,00.")
      EscrevaL()
   FimSe
FimProcedimento
Procedimento APRESENTAR2
Var
   X,C: inteiro
Inicio
   Para X := 1 ate FIM faca
      Se FUNC[X].SALARIO < 1000 Entao
         EscrevaL("Matrícula:",FUNC[X].MATRICULA)
         EscrevaL("Nome:      ",FUNC[X].NOME)
         EscrevaL("Salário:  $",FUNC[X].SALARIO)
         EscrevaL()
         C := C + 1
      FimSe
   FimPara
   Se C = 0 entao
      EscrevaL("NÃO HÁ SALÁRIOS < $1.000,00.")
      EscrevaL()
   FimSe
FimProcedimento
Procedimento APRESENTAR3
Var
   X,C: inteiro
Inicio
   Para X := 1 ate FIM faca
      Se FUNC[X].SALARIO = 1000 Entao
         EscrevaL("Matrícula:",FUNC[X].MATRICULA)
         EscrevaL("Nome:      ",FUNC[X].NOME)
         EscrevaL("Salário:  $",FUNC[X].SALARIO)
         EscrevaL()
         C := C + 1
      FimSe
   FimPara
   Se C = 0 entao
      EscrevaL("NÃO HÁ SALÁRIOS = $1.000,00.")
      EscrevaL()
   FimSe
FimProcedimento
inicio
   CADASTRAR
   Repita
      EscrevaL("--- MENU DE OPÇÕES ---")
      EscrevaL("[1] CADASTRAR funcionários")
      EscrevaL("[2] CLASSIFICAR por matrícula")
      EscrevaL("[3] PESQUISAR por matrícula")
      EscrevaL("[4] APRESENTAR salários > $1.000")
      EscrevaL("[5] APRESENTAR salários < $1.000")
      EscrevaL("[6] APRESENTAR salários = $1.000")
      EscrevaL("[7] SAIR do programa")
      Leia(MENU)
      Se (MENU <= 7) e (MENU >= 1) Entao
         Escolha MENU
         CASO 1
            CADASTRAR
         CASO 2
            CLASSIFICAR
         CASO 3
            PESQUISAR
         CASO 4
            APRESENTAR1
         CASO 5
            APRESENTAR2
         CASO 6
            APRESENTAR3
         CASO 7
         FimEscolha
      SeNao
         EscrevaL(" Opção inválida - tente novamente!")
      FimSe
   Ate MENU = 7
fimalgoritmo