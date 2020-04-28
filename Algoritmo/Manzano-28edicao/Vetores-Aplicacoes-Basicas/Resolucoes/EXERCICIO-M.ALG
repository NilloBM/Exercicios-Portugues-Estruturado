algoritmo "EXERCICIO-M"
var
   A: Vetor[1..12] de real
   B: Vetor[1..12] de real
   C: Vetor[1..12] de real
   X,Y: inteiro
   AUX,PESQ: real
   RESP: caractere
   FLAG: logico
inicio
   //ENTRADA DE DADOS: VETOR 'A','B' & 'C'
   EscrevaL("VETOR: 'A' & 'B'")
   Para X := 1 ate 12 faca
      Leia(A[X],B[X])
      C[X] := A[X]*B[X]
   FimPara
   //ORDENAÇÃO: VETOR 'C'
   Para X := 1 ate 11 faca
      Para Y := X+1 ate 12 faca
         Se C[X] > C[Y] entao
            AUX := C[X]
            C[X] := C[Y]
            C[Y] := AUX
         FimSe
      FimPara
   FimPara
   //PESQUISA SEQUENCIAL: VETOR 'C'
   RESP := "S"
   Enquanto Maiusc(RESP) = "S" faca
      LimpaTela
      EscrevaL("Qual o número pesquisado?")
      Leia(PESQ)
      FLAG := falso
      X := 1
      Enquanto (X<=12) e (FLAG=falso) faca
         Se PESQ = C[X] entao
            FLAG := verdadeiro
         Senao
            X := X + 1
         FimSe
      FimEnquanto
      Se FLAG = verdadeiro entao
         EscrevaL("O número",PESQ," foi encontrado na posição",X)
      Senao
         EscrevaL("O número",PESQ," não foi encontrado!")
      FimSe
      EscrevaL("Quer pesquisar novamente? (S/N):")
      Leia(RESP)
   FimEnquanto
fimalgoritmo