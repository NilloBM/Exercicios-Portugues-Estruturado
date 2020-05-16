algoritmo "EXERCICIO-2-B"
var
   A: inteiro
Procedimento SOMATORIO(Y:inteiro)
Var
   SOMA,X: Inteiro
Inicio
   Para X := 1 ate Y faca
      SOMA := SOMA + X
   FimPara
   EscrevaL("SOMATÓRIO DE",Y," É:",SOMA)
FimProcedimento
inicio
   Escreva("Digite um valor: ")
   Leia(A)
   SOMATORIO(A)
fimalgoritmo