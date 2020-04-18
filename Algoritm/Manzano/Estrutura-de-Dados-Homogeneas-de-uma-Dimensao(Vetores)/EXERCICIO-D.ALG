algoritmo "EXERCICIO-D"
var
   A: vetor[1..15] de inteiro
   B: vetor[1..15] de real
   C: inteiro
inicio
      //ENTRADA DE DADOS DA MATRIZ A
      Para C := 1 ate 15 faca
           Leia(A[C])
      FimPara
      
      //ENTRADA DE DADOS DA MATRIZ B
      Para C := 1 ate 15 faca
           B[C] := exp(A[C],2)
      FimPara
      
      //SAÍDA DE DADOS DA MATRIZ B
      EscrevaL("MATRIZ B:")
      Para C := 1 ate 15 faca
           Escreva(B[C])
      FimPara
      // OBS: VISUALG NÃO ACEITA EXPONENCIAL DO TIPO INTEIRO, APENAS REAL.
fimalgoritmo