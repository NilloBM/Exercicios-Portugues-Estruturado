algoritmo "EXERCICIO-T"
var
   A: vetor[1..10] de inteiro
   B: vetor[1..10] de inteiro
   C: vetor[1..20] de inteiro
   X,Z,CA,CB,VALOR: inteiro
inicio
      //ENTRADA DE DADOS DO VETOR 'A' E 'B'
      EscrevaL("VETOR A e B:")
      Repita
           Leia(VALOR)
           Se (VALOR%2 = 0) e (VALOR%3 = 0) e (CA <= 9) entao
              CA := CA + 1
              A[CA] := VALOR
           FimSe
           Se (VALOR%5 = 0) e (CB <= 9) entao
              CB := CB + 1
              B[CB] := VALOR
           FimSe
      Ate CA e CB = 10
      //ENTRADA DE DADOS DO VETOR 'C'
      Para X := 1 ate 10 faca
           C[X] := A[X]
      FimPara
      Para Z := 1 ate 10 faca
           C[X+Z] := B[Z]
      FimPara
      //SAÍDA DE DADOS DO VETOR 'C'
      EscrevaL("VETOR C:")
      Para X := 1 ate 20 faca
           Escreva(C[X])
      FimPara
fimalgoritmo