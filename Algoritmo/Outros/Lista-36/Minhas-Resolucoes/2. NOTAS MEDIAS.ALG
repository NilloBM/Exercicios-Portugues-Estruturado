algoritmo "NOTAS MEDIAS"
var
   N1,N2,N3,S,MAri,MHar,MPon:real
   Letra:caractere
   
Funcao CalcMAri(x,y,z:real):real
Inicio

       retorne (x+y+z)/3
       
FimFuncao

Funcao CalcMPon(x,y,z:real):real
inicio

       x := x*5
       y := y*3
       z := z*2
       
       retorne (x+y+z)/3
       
FimFuncao

Funcao CalcMHar(x,y,z,:real):real
Inicio

      retorne 3/(1/x)+(1/y)+(1/z)


Fimfuncao
inicio

   Repita

      EscrevaL("---------------------------------")
      EscrevaL("         Digite as Notas         ")
      EscrevaL("---------------------------------")
      Escreva(" Digite a 1a nota: ")
      Leia(n1)
      Escreva(" Digite a 2a nota: ")
      Leia(n2)
      Escreva(" Digite a 3a nota: ")
      Leia(n3)
      EscrevaL("---------------------------------")
      EscrevaL("Escreva [A] para M�dia Aritm�tica")
      EscrevaL("Escreva [P] para M�dia Ponderada")
      EscrevaL("Escreva [H] para M�dia Harm�nica")
      EscrevaL("---------------------------------")
      Escreva("Digite a Letra: ")
      Leia(letra)


      S := Asc(Maiusc(letra))

      Escolha S

      Caso 65
           MAri := CalcMAri(n1,n2,n3)
           Escreval("A m�dia aritm�tica �: ", MAri:1:2)
      Caso 80
           MPon := CalcMPon(n1,n2,n3)
           Escreval("A m�dia ponderada �: ", MPon:1:2)
      Caso 72
           MHar := CalcMHar(n1,n2,n3)
           Escreval("A m�dia harm�nica �: ", MHar:1:2)
      OutroCaso
           Escreval(" Comando errado, tente novamente.")

      FimEscolha

      Escreva("Outra m�dia? [S/N]")
      Leia(letra)
      LimpaTela
   ate maiusc(letra)="N"
   
fimalgoritmo