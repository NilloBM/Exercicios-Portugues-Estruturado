Algoritmo "EXERCICIO-N"
var
   A: Vetor[1..20] de real
   MD,MA,ME: real
   X: inteiro
inicio
   //ENTRADA DE DADOS DO VETOR 'A'
   EscrevaL("Valores em Graus Celcius? ")
   Para X := 1 ate 20 faca
      Leia(A[X])
   FimPara
   //ENTRADA DE DADOS: M�DIA, MAIOR E MENOR
   MA := A[1]
   ME := A[1]
   Para X := 1 ate 20 faca
      MD := MD + (A[X]/20)
      Se A[X] > MA entao
         MA := A[X]
      FimSe
      Se A[X] < ME entao
         ME := A[X]
      FimSe
   FimPara
   //SA�DA DE DADOS: M�DIA, MAIOR E MENOR
   EscrevaL("A m�dia dos graus �: ",MD)
   EscrevaL("O maior grau �: ",MA)
   EscrevaL("O menor grau �: ",ME)
fimalgoritmo