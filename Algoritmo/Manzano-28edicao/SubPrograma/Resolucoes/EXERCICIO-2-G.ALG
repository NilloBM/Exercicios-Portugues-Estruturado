algoritmo "EXERCICIO-2-G"
var
   A,B,C: inteiro
Procedimento QUADRADOSOMA(X,Y,Z: inteiro)
Var
   QD: Real
Inicio
   QD := (X + Y + Z)^2
   EscrevaL("A SOMA DOS QUADRADOS É: ",QD)
FimProcedimento
inicio
   EscrevaL("Digite o numero 1o: ")
   Leia(A)
   EscrevaL("Digite o numero 2o: ")
   Leia(B)
   EscrevaL("Digite o numero 3o: ")
   Leia(C)
   QUADRADOSOMA(A,B,C)
fimalgoritmo