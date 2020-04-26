algoritmo "EXERCICIO-G"
var
   A: Vetor[1..20] de inteiro
   B: Vetor[1..20] de inteiro
   X,Y,AUX,PESQ,START,END: inteiro
   MIDDLE: real
   FLAG: logico
   RESP: caractere
inicio
   //ENTRADA DE DADOS: VETOR 'A' E 'B'
   Para X := 1 ate 20 faca
      Leia(A[X])
      B[X] := A[X] + 2
   FimPara
   //ORDENAÇÃO CRESCENTE: MATRIZ 'B'
   Para X := 1 ate 19 faca
      Para Y := X+1 ate 20 faca
         Se B[X] > B[Y] entao
            AUX := B[X]
            B[X] := B[Y]
            B[Y] := AUX
         FimSe
      FimPara
   FimPara
   //PESQUISA BINÁRIA: MATRIZ 'B'
   RESP := "S"
   Enquanto Maiusc(RESP) = "S" faca
      EscrevaL("Qual o número pesquisado ?")
      Leia(PESQ)
      FLAG := falso
      START := 1
      END := 20
      Enquanto (START <= END) e (FLAG = falso) faca
         MIDDLE := (START + END)/2
         Se B[Int(MIDDLE)] = PESQ entao
            FLAG := verdadeiro
         Senao
            Se PESQ < B[Int(MIDDLE)] entao
               END := Int(MIDDLE) - 1
            Senao
               START := Int(MIDDLE) + 1
            FimSe
         FimSe
      FimEnquanto
      Se FLAG = verdadeiro entao
         EscrevaL(" O número",PESQ," foi achado na posição",int(MIDDLE))
      Senao
         EscrevaL(" O número",PESQ," não foi encontrado!")
      FimSe
      EscrevaL("Quer pesquisar novamente?")
      Leia(RESP)
   FimEnquanto

fimalgoritmo