algoritmo "EXERCICIO-2-C"
var
   X: Inteiro
Procedimento FIBONACCI(Y:inteiro)
Var
   Z,A,B,C: inteiro
Inicio
   B := 1
   Para Z := 1 ate Y faca
      C := A + B
      Escreva(C)
      A := B
      B := C
   FimPara
FimProcedimento
inicio
   Escreva("Digite um número: ")
   Leia(X)
   FIBONACCI(X)
fimalgoritmo