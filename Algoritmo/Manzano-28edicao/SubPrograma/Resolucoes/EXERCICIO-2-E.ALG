algoritmo "EXERCICIO-2-E"
var
   N: inteiro
Procedimento PARIMPAR(X:inteiro)
Inicio
      Se X%2 = 0 Entao
         EscrevaL("É par!")
      SeNao
         EscrevaL("É impar!")
      FimSe
FimProcedimento
inicio
      Escreva("Escreva um número: ")
      Leia(N)
      PARIMPAR(N)
fimalgoritmo