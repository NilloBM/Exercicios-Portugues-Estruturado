algoritmo "EXERCICIO-Q"
var
   A: Vetor[1..10] de caractere
   X,Y,INIC,FIM: inteiro
   AUX,RESP,PESQ: caractere
   MEIO: real
   FLAG: logico
inicio
   //ENTRADA DE DADOS: VETOR 'A'
   Para X := 1 ate 10 faca
      Leia(A[X])
   FimPara
   //ORDENA��O CRESCENTE: VETOR 'A'
   Para X := 1 ate 9 faca
      Para Y := X+1 ate 10 faca
         Se A[X] > A[Y] entao
            AUX := A[X]
            A[X] := A[Y]
            A[Y] := AUX
         FimSe
      FimPara
   FimPara
   //PESQUISA BIN�RIA: VETOR 'A'
   RESP := "S"
   Enquanto Maiusc(RESP) = "S" faca
      EscrevaL("Qual o n�mero pesquisado? ")
      Leia(PESQ)
      INIC := 1
      FIM := 10
      FLAG := falso
      Enquanto (INIC <= FIM) e (FLAG = falso) faca
         MEIO := (INIC+FIM)/2
         Se PESQ = A[Int(MEIO)] entao
            FLAG := verdadeiro
         SeNao
            Se PESQ < A[Int(MEIO)] entao
               FIM := Int(MEIO) - 1
            SeNao
               INIC := Int(MEIO) + 1
            FimSe
         FimSE
      FimEnquanto
      Se FLAG = verdadeiro entao
         EscrevaL("N�mero: ",PESQ,", foi encontrado na posi��o",Int(MEIO))
      Senao
         EscrevaL("N�mero: ",PESQ,", n�o foi encontrado!")
      FimSe
      EscrevaL("Pesquisar novamente? (S/N)")
      Leia(RESP)
   FimEnquanto
fimalgoritmo