algoritmo "EXERCICIO-2-F"
var
   A,B,C: inteiro
Procedimento SOMAQUADRADOS(X,Y,Z: inteiro)
Var
   SM: Real
Inicio
   SM := X^2 + Y^2 + Z^2
   EscrevaL("A SOMA DOS QUADRADOS É: ",SM)
FimProcedimento
inicio
   EscrevaL("Digite o numero 1o: ")
   Leia(A)
   EscrevaL("Digite o numero 2o: ")
   Leia(B)
   EscrevaL("Digite o numero 3o: ")
   Leia(C)
   SOMAQUADRADOS(A,B,C)
fimalgoritmo