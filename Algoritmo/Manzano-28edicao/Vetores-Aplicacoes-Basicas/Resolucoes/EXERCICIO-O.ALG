algoritmo "EXERCICIO-O"
var
   A: Vetor[1..15] de inteiro
   X,Y,AUX,PESQ,COMEC,FIM: inteiro
   MEIO: real
   FLAG: logico
   RESP: caractere
inicio
   //ENTRADA DE DADOS: VETOR 'A'
   Para X :=1 ate 15 faca
      Leia(A[X])
   FimPara
   //ORDENAÇÃO: VETOR 'A'
   Para X := 1 ate 14 faca
      Para Y := X+1 ate 15 faca
         Se A[X] > A[Y] entao
            AUX := A[X]
            A[X] := A[Y]
            A[Y] := AUX
         FimSe
      FimPara
   FimPara
   //PESQUISA BINÁRIA: MATRIZ 'A'
   RESP := "S"
   Enquanto Maiusc(RESP) = "S" faca
      EscrevaL("Qual é o número pesquisado?")
      Leia(PESQ)
      FLAG := falso
      COMEC := 1
      FIM := 15
      Enquanto (COMEC <= FIM) e (FLAG = falso) faca
         MEIO := (COMEC + FIM)/2
         Se PESQ = A[int(MEIO)] entao
            FLAG := verdadeiro
         Senao
            Se PESQ < A[int(MEIO)] entao
               FIM := int(MEIO) - 1
            Senao
               COMEC := int(MEIO) + 1
            FimSe
         FimSe
      FimEnquanto
      Se FLAG = verdadeiro entao
         EscrevaL("Número:",PESQ,", foi encontrado na posição:",int(MEIO))
      Senao
         EscrevaL("Número:",PESQ,", não foi encontrado!")
      FimSe
      EscrevaL("Deseja pesquisar novamente, S/N?")
      Leia(RESP)
   FimEnquanto
fimalgoritmo