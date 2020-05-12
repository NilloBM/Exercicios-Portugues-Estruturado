algoritmo "EXERCICIO-A"
Const
   FIM = 2
Tipo
   REG_DADOS = registro
      NOME: Caractere
      END: Caractere
      TEL: Inteiro
   FimRegistro
var
   CONTATO: Vetor[1..FIM] de REG_DADOS
   X,MENU: Inteiro
Procedimento CADASTRAR()
Inicio
   Para X := 1 ate FIM faca
      Escreva("Qual o nome do contato? ")
      Leia(CONTATO[X].NOME)
      Escreva("Qual é o endereço? ")
      Leia(CONTATO[X].END)
      Escreva("Qual é o telefone? ")
      Leia(CONTATO[X].TEL)
      EscrevaL()
   FimPara
FimProcedimento
Procedimento PESQUISAR
Var
   RESP,PESQ: Caractere
   FLAG: Logico
Inicio
   RESP := "S"
   Enquanto Maiusc(RESP) = "S" faca
      EscrevaL("Qual o nome pesquisado? ")
      Leia(PESQ)
      FLAG := falso
      X := 1
      Enquanto (X <= FIM) e (FLAG = falso) Faca
         Se Maiusc(PESQ) = Maiusc(CONTATO[X].NOME) Entao
            FLAG := verdadeiro
         SeNao
            X := X + 1
         FimSe
      FimEnquanto
      Se FLAG = verdadeiro Entao
         EscrevaL(PESQ," foi encontrado(a) na posição",X)
      SeNao
         EscrevaL(PESQ," não foi encontrado!")
      FimSe
      EscrevaL("Gostaria de pesquisar novamente? (S/N): ")
      Leia(RESP)
   FimEnquanto
FimProcedimento
Procedimento CLASSIFICAR
Var
   Y: inteiro
   AUX: Caractere
Inicio
   Para X := 1 ate FIM - 1 faca
      Para Y := X+1 ate FIM faca
         Se CONTATO[X].NOME > CONTATO[Y].NOME Entao
            AUX := CONTATO[X].NOME
            CONTATO[X].NOME := CONTATO[Y].NOME
            CONTATO[Y].NOME := AUX
         FimSe
      FimPara
   FimPara
FimProcedimento
Procedimento APRESENTAR
Inicio
   Para X := 1 ate FIM faca
      EscrevaL("Nome: ",CONTATO[X].NOME)
      EscrevaL("Endereço: ",CONTATO[X].END)
      EscrevaL("Telefone:",CONTATO[X].TEL)
      EscrevaL()
   FimPara
FimProcedimento
inicio
   CADASTRAR
   Repita
      EscrevaL("--- MENU DE OPÇÕES ---")
      EscrevaL("[1] CADASTRAR contato")
      EscrevaL("[2] PESQUISAR contato")
      EscrevaL("[3] CLASSIFICAR os contato por ordem alfabética")
      EscrevaL("[4] APRESENTAR os contatos")
      EscrevaL("[5] SAIR do programa")
      Leia(MENU)
      Se (MENU > 0) e (MENU < 6) Entao
         Escolha MENU
         CASO 1
            CADASTRAR
         CASO 2
            PESQUISAR
         CASO 3
            CLASSIFICAR
         CASO 4
            APRESENTAR
         CASO 5
         FimEscolha
      Senao
         EscrevaL("Opção inválida - tente novamente!")
      FimSe
   Ate MENU = 5
fimalgoritmo