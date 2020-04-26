algoritmo "EXERCICIO-F"
var
   A: Vetor[1..30] de real
   B: Vetor[1..30] de real
   X,Z,PESQ: inteiro
   RESP: caractere
   FLAG: logico
inicio
   //ENTRADA DE DADOS: VETOR 'A' E 'B'
   Para X := 1 ate 30 faca
      Leia(A[X])
   FimPara
   Para X := 1 ate 30 faca
      B[X] := A[X]^3
   FimPara
   //PESQUISA SEQUENCIAL: MATRIZ 'B'
   RESP := "S"
   Enquanto Maiusc(RESP) = "S" Faca
      Escreva("Qual o número pesquisado?")
      Leia(PESQ)
      Z := 1
      FLAG := falso
      Enquanto (Z<=30) e (FLAG = falso) Faca
         Se B[Z] = PESQ Entao
            FLAG := verdadeiro
         SeNao
            Z := Z + 1
         FimSe
      FimEnquanto
      Se FLAG = verdadeiro Entao
         EscrevaL(PESQ," foi encontrado na posição", Z)
      SeNao
         EscrevaL(PESQ," não foi encontrado!")
      FimSe
      EscrevaL("Quer pesquisar novamente (S/N)? ")
      Leia(RESP)
   FimEnquanto
fimalgoritmo