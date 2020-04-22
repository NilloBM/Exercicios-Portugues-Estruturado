algoritmo "EXERCICIO-U"
var
   A: vetor[1..12] de inteiro
   B: vetor[1..12] de inteiro
   C: vetor[1..24] de inteiro
   X,Z,CA,CB: inteiro
inicio
   //ENTRADA DE DADOS DOS VETORES 'A' E 'B'
   EscrevaL("VETOR A e B:")
   Repita
      Leia(X)
      Se ((X%2=0) ou (X%3=0)) e (CA<=11) entao
         CA := CA + 1
         A[CA] := X
      FimSe
      Se nao(X%5 = 0) e (CB<=11) entao
         CB := CB + 1
         B[CB] := X
      FimSe
   Ate (CA = 12) e (CB = 12)
   //ENTRADA DE DADOS DO VETOR 'C'
   Para X := 1 ate 12 faca
        C[X] := A[X]
   FimPara
   Para Z := 1 ate 12 faca
        C[X+Z] := B[Z]
   FimPara
   //SAÍDA DE DADOS DO VETOR 'C'
   EscrevaL("VETOR C:")
   Para X := 1 ate 24 faca
        Escreva(C[X])
   FimPara
fimalgoritmo