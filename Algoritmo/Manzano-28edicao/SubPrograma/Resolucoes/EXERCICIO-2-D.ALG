algoritmo "EXERCICIO-2-D"
var
   BASE,EXPO: Inteiro
Procedimento POTENCIA(BA,EX: Inteiro)
Var
   C,P: inteiro
Inicio
   P := 1
   Para C := 1 ate EX faca
      P := P*BA
   FimPara
   Escreval("POTÊNCIA DA BASE",BASE," E EXPOENTE",EXPO," É:",P)
FimProcedimento
inicio
   Escreva("Digite o valor da base: ")
   Leia(BASE)
   Escreva("Digite o valor do expoente: ")
   Leia(EXPO)
   POTENCIA(BASE,EXPO)
fimalgoritmo