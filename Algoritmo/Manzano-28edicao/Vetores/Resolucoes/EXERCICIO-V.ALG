algoritmo "EXERCICIO-V"
var
   A: Vetor[1..30] de inteiro
   X,P,I: inteiro
inicio
   //ENTRADA DE DADOS DO VETOR 'A'
   Para X := 1 ate 30 faca
      Leia(A[X])
   FimPara
   //CONTAGEM DE N�MEROS PARES E �MPARES DA MATRIZ 'A'
   Para X := 1 ate 30 faca
      Se A[X]%2 = 0 entao
         P := P + 1
      Senao
         I := I + 1
      FimSe
   FimPara
   //SA�DA DA QUANTIDADE DE N�MEROS �MPARES E PARES
   EscrevaL("�MPARES :",I)
   EscrevaL("PARES :",P)
fimalgoritmo