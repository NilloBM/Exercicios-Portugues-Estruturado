algoritmo "EXERCICIO-2-E"
var
   N: inteiro
Procedimento PARIMPAR(X:inteiro)
Inicio
      Se X%2 = 0 Entao
         EscrevaL("� par!")
      SeNao
         EscrevaL("� impar!")
      FimSe
FimProcedimento
inicio
      Escreva("Escreva um n�mero: ")
      Leia(N)
      PARIMPAR(N)
fimalgoritmo