algoritmo "EXERCICIO-S"
var
   A: Vetor[1..10] de real
   X,Y: inteiro
   AUX,PESQ: real
   RESP: caractere
   FLAG: logico
inicio
   //ENTRADA DE DADOS: VETOR 'A'
   Para X := 1 ate 10 faca
      Leia(A[X])
   FimPara
   //ORDENA��O: VETOR 'A'
   Para X := 1 ate 10 faca
      Para Y := X+1 ate 10 faca
         Se A[X] > A[Y] entao
            AUX := A[X]
            A[X] := A[Y]
            A[Y] := AUX
         FimSe
      FimPara
   FimPara
   //PESQUISA SEQUENCIAL: VETOR 'A'
   RESP := "S"
   Enquanto Maiusc(RESP) = "S" faca
      EscrevaL("Qual o n�mero pesquisado?")
      Leia(PESQ)
      FLAG := falso
      X := 1
      Enquanto (X <= 10) e (FLAG = falso) faca
         Se PESQ = A[X] entao
            FLAG := verdadeiro
         Senao
            X := X + 1
         FimSe
      FimEnquanto
      Se FLAG = verdadeiro entao
         EscrevaL("O n�mero:",PESQ,", foi encontrado na posi��o",X)
      SeNao
         EscrevaL("O n�mero:",PESQ,", n�o foi encontrado")
      FimSe
      EscrevaL("Pesquisar novamente (S/N)?")
      Leia(RESP)
   FimEnquanto
fimalgoritmo