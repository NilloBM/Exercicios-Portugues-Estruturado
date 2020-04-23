algoritmo "EXERCICIO-B"
var
   A: vetor[1..8] de inteiro
   B: vetor[1..8] de inteiro
   X,Y,AUX,COMECO,FIM,PESQ: inteiro
   MEIO: real
   FLAG: logico
   RESP: caractere
inicio
   //ENTRADA DE DADOS: VETOR 'A' E 'B'
   Para X := 1 ate 8 faca
      Leia(A[X])
   FimPara
   Para X := 1 ate 8 faca
      B[X] := A[X]*5
   FimPara
   //ORDENAÇÃO: VETORES 'A' E 'B'
   Para X := 1 ate 7 faca
      Para Y := X+1 ate 8 faca
         Se A[X] > A[Y] entao
            AUX := A[X]
            A[X] := A[Y]
            A[Y] := AUX
         FimSe
      FimPara
   FimPara
      //PESQUISA-BINÁRIA: VETOR 'B'
      RESP := "S"
      Enquanto Maiusc(RESP) = "S" faca
         LimpaTela
         EscrevaL("Qual o elemento da pesquisa? ")
         Leia(PESQ)
         COMECO := 1
         FIM := 8
         FLAG := falso
         Enquanto (COMECO<=FIM) e (FLAG = falso) faca
            MEIO := (COMECO + FIM)/2
            Se PESQ = B[int(MEIO)] entao
               FLAG := verdadeiro
            Senao
               Se PESQ < B[int(MEIO)] entao
                  FIM := int(MEIO) - 1
               Senao
                  COMECO := int(MEIO) + 1
               FimSe
            FimSe
         FimEnquanto
      //SAÍDA DE DADOS: VETOR 'B'
         Se FLAG = verdadeiro entao
            EscrevaL(PESQ," w[foi encontrado na posição]",int(MEIO))
         Senao
            EscrevaL("Elemento não foi encontrado")
         FimSe
         Escreval("Quer pesquisar novamente (S/N)? ")
         Leia(RESP)
      FimEnquanto
fimalgoritmo