algoritmo "EXERCICIO-J"
var
   A: Vetor[1..15] de inteiro
   B: Vetor[1..15] de inteiro
   C: Vetor[1..15] de inteiro
   D: Vetor[1..15] de inteiro
   E_: Vetor[1..30] de inteiro
   X,F,Y,AUX: inteiro
inicio
   //ENTRADA DE DADOS: VETOR 'A' & 'B' & 'C'
   EscrevaL("VETOR 'A' e 'B' e 'C':")
   Para X := 1 ate 15 Faca
      Leia(A[X],B[X],C[X])
      C[X] := C[X] + A[X]
   FimPara
   //ENTRADA DE DADOS: VETOR 'D'
   Para X := 1 ate 15 Faca
      D[X] := B[X]
      F := D[X] - 1
      Para F := F ate 1 Passo -1 Faca
         D[X] := D[X]*F
      FimPara
   FimPara
   //ENTRADA DE DADOS: VETOR 'E'
   Para X := 1 ate 30 faca
      Se X <= 15 entao
         E_[X] := C[X] - D[X]
      SeNao
         E_[X] := A[X-15] + B[X-15]
      FimSe
   FimPara
   //ORDENAÇÃO: VETOR 'E'
   Para X := 1 ate 29 faca
        Para Y := X+1 ate 30 faca
             Se E_[X] > E_[Y] Entao
                AUX := E_[X]
                E_[X] := E_[Y]
                E_[Y] := AUX
             FimSe
        FimPara
   FimPara
   //SAÍDA DE DADOS: VETOR 'E'
   EscrevaL("VETOR E:")
   Para X := 1 ate 30 faca
        Escreva(E_[X])
   FimPara
fimalgoritmo