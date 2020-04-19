algoritmo "EXERCICIO-R"
var
   A,B,C,D: vetor[1..6] de inteiro
   X: inteiro
inicio
   //ENTRADA DE DADOS DO VETOR 'A' e 'B'
   Para X := 1 ate 6 faca
      Leia(A[X])
      Leia(B[X])
   FimPara
   //ENTRADA DE DADOS DO VETOR 'C' E 'D'
   Para X := 1 ate 6 faca
      Se A[X]%2 = 1 entao
         C[X] := A[X]
      SeNao
         D[X] := A[X]
      FimSe
      Se (B[X]%2 = 1) e (C[X] = 0) Entao
         C[X] := B[X]
      FimSe
      Se (B[X]%2 = 0) e (C[X] = 0) Entao
         D[X] := B[X]
      FimSe
   FimPara
   //SAÍDA DE DADOS DO VETOR 'C' E 'D'

fimalgoritmo