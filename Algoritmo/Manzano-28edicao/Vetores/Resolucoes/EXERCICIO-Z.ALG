algoritmo "EXERCICIO-Z"
var
   A: Vetor[1..10] de inteiro
   X,TI: inteiro
   P: real
inicio
      //ENTRADA DE DADOS DO VETOR 'A'
      Para X:= 1 ate 10 faca
           Leia(A[X])
      FimPara
      //CONTAGEM E PORCENTAGEM DE TOTAL DE �MPARES DA MATRIZ 'A'
      Para X := 1 ate 10 faca
           Se A[X]%2=1 entao
              TI := TI + 1
           FimSe
      FimPara
      P := TI*100/10
      //SA�DA DE DADOS: TOTAL DE �MPARES E SEU PERCENTUAL DA MATRIZ 'A'
      EscrevaL("TOTAL DE �MPARES:",TI)
      EscrevaL("PERCENTUAL DE �MPARES:",P,"%")
fimalgoritmo