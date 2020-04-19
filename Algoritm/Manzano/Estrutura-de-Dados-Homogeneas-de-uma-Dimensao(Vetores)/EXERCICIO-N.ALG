algoritmo "EXERCICIO-N"
var
   A: Vetor[1..20] de real
   MD,MA,ME: real
   X: inteiro
inicio
      //ENTRADA DE DADOS DO VETOR 'A'
      Para X := 1 ate 20 faca
           Leia(A[X])
      FimPara
      //ENTRADA DE DADOS: MÉDIA, MAIOR E MENOR
      Para X := 1 ate 20 faca
           MD := MD + (A[X]/20)
           Se A[X] > MA entao
              MA := A[X]
           Senao
              ME := A[X]
           FimSe
      FimPara
      //SAÍDA DE DADOS: MÉDIA, MAIOR E MENOR
fimalgoritmo