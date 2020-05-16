algoritmo "EXERCICIO-2-A"
var
   Valor: real
   Time: real
   Taxa: real
Procedimento PREST(X,Y,Z:real)
var
Inicio
   EscrevaL("Valor atual da prestação atrasada: ",(X+(X*(Y/100)*Z)))
FimProcedimento
inicio
   Escreva("Digite o valor da prestação: ")
   Leia(Valor)
   Escreva("Digite a taxa de juros (%): ")
   Leia(Taxa)
   Escreva("Digite o tempo em atrasado (meses): ")
   Leia(Time)
   PREST(Valor,Taxa,Time)
fimalgoritmo