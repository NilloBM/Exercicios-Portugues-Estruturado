algoritmo "EXERCICIO-N"
var
   A: Vetor[1..15] de inteiro
   B: Vetor[1..15] de inteiro
   C: Vetor[1..15] de inteiro
   D: Vetor[1..15] de inteiro
   X,Y,AUX,PESQ,START,END: inteiro
   MIDDLE: real
   FLAG: logico
   RESP: caractere
inicio
   //ENTRADA DE DADOS: VETOR 'A','B','C' & 'D'
   Para X := 1 ate 15 faca
      Leia(A[X],B[X],C[X])
      D[X] := A[X]+B[X]+C[X]
   FimPara
   //ORDENA��O: VETOR 'D'
   Para X := 1 ate 15 faca
      Para Y := X+1 ate 15 faca
         Se D[X] > D[Y] entao
            AUX := D[X]
            D[X] := D[Y]
            D[Y] := AUX
         FimSe
      FimPara
   FimPara
   //PESQUISA-BIN�RIA: VETOR 'D'
   RESP := "S"
   Enquanto Maiusc(RESP) = "S" faca
      EscrevaL("Qual o num�ro pesquisado? ")
      Leia(PESQ)
      FLAG := falso
      START := 1
      END := 15
      Enquanto (START <= END) e (FLAG = falso) faca
         MIDDLE := (START + END)/2
         Se PESQ = D[int(MIDDLE)] entao
            FLAG := verdadeiro
         Senao
            Se PESQ < D[int(MIDDLE)] entao
               END := int(MIDDLE) - 1
            Senao
               START := int(MIDDLE) + 1
            FimSe
         FimSe
      FimEnquanto
      Se FLAG = verdadeiro entao
         EscrevaL(PESQ," foi encontrado na posi��o:",int(MIDDLE))
      Senao
         EscrevaL(PESQ," n�o foi encontrado!")
      FimSe
      EscrevaL("Deseja pesquisar novamente? (S/N):")
      Leia(RESP)
   FimEnquanto
fimalgoritmo