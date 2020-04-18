algoritmo "EXERCICIO-E"
var
   A: vetor[1..15] de inteiro
   B: vetor[1..15] de inteiro
   C, F: inteiro
inicio
      //ENTRADA DE DADOS DO VETOR 'A'
      Para C := 1 ate 15 faca
           Leia(A[C])
      FimPara

      //ENTRADA DE DADOS DO VETOR 'B'

      Para C := 1 ate 15 faca
         B[C] := 1
         Para F := A[C] ate 1 passo -1 faca
              B[C] := B[C] * F
         FimPara
      FimPara
      
      //SAÍDA DE DADOS DO VETOR 'B'
      Escreva("Vetor B:")
      Para C := 1 ate 15 faca
           Escreva(B[C])
      FimPara
fimalgoritmo