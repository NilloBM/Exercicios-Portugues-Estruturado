algoritmo "VOLUME ESFERA FUNCAO"
var
   Dia,Raio,VolEsf:real
Funcao CalcVEsf(X:real):real

      Retorne 4/3*pi*X^3
      
FimFuncao
inicio

      Escreva(" Qual o diâmetro da esfera? ")
      leia(Dia)
      Raio <- Dia/2
      VolEsf := CalcVEsf(RAIO)
      Escreval(" O volume da esfera é: ",VolEsf:1:2)
      
fimalgoritmo