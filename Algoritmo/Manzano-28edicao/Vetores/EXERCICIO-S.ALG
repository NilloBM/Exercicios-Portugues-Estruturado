algoritmo "EXERCICIO-S"
var
   A: vetor[1..6] de inteiro
   B: vetor[1..6] de inteiro
   C: vetor[1..12] de inteiro
   X,Z,CA,CB,Valor: inteiro
inicio
   //ENTRADA DE DADOS DOS VETORES 'A' E 'B'
   EscrevaL("VETOR A e B:")
   Repita
      Leia(VALOR)
      Se (VALOR%2 = 0) e (CA <= 5) entao
         CA := CA + 1
         A[CA] := VALOR
      FimSe
      Se (VALOR%2 = 1) e (CB <= 5) entao
         CB := CB + 1
         B[CB] := VALOR
      FimSe
   Ate CA e CB = 6
   //ENTRADA DE DADOS DO VETOR 'C'
   Para X := 1 ate 6 faca
      C[X] := A[X]
   FimPara
   Para Z := 1 ate 6 faca
      C[X+Z] := B[Z]
   FimPara
   //SAÍDA DE DADOS DO VETOR 'C'
   EscrevaL("VETOR C:")
   Para X := 1 ate 12 faca
      Escreva(C[X])
   FimPara
fimalgoritmo