algoritmo "VALIDADE DATA (2020)"
var
   D,M,A,Data_Valida: inteiro
   Val: Caractere

Funcao Data_Valida(X,Y,Z:inteiro):caractere
inicio

   Se (Z >= 1) e (Z <= 2020) entao

      Se (Y<=12) e (Y>=1) entao

         Escolha Y

         caso 1,3,5,7,8,10,12

            Se (X>=1) e (X<=31) entao
               Val := "Data V�lida"
            Senao
               Val := "Dia Inv�lido"
            FimSe
            
         caso 2

            Se (X>=1) e (X<=28) entao
               Val := "Data V�lida"
            Senao
               Val := "Dia Inv�lido"
            FimSe
            
         Outrocaso

            Se (X>=1) e (X<=30) entao
               Val := "Data V�lida"
            Senao
               Val := "Dia Inv�lido"
            FimSe

         FimEscolha

      Senao

         Val := "M�s inv�lido"

      FimSe

   Senao

      Val := "Ano inv�lido"

   FimSe

   Retorne Val

FimFuncao
inicio

   Escreva ("Digite o Dia: ")
   leia(D)
   Escreva ("Digite o M�s: ")
   leia(M)
   Escreva ("Digite o Ano: ")
   Leia(A)

   Val := Data_Valida(D,M,A)

   Escreva(Val)
   
fimalgoritmo