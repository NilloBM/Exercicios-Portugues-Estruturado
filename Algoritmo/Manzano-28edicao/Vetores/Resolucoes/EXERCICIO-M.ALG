algoritmo "EXERCICIO-M"
var
   A: Vetor[1..10] de inteiro
   X,Y: inteiro
   Validade: logico
inicio
   //ENTRADA DE DADOS DO VETOR 'A'
   Repita
      Escreva("Escreva um valor de 1 ate 10: ")
      Leia(Y)
      Se (Y<=10) e (Y>=1) entao
         Para X := 1 ate 10 faca
            A[X] := X*Y
         FimPara
         Validade := verdadeiro
      FimSe
   //SAIDA DE DADOS DO VETOR 'A'
      Se Validade = verdadeiro Entao
         EscrevaL("VETOR A:")
         Para X := 1 ate 10 faca
            Escreva(A[X])
         FimPara
      Senao
         LimpaTela
         EscrevaL("Valor inválido!")
      FimSe
   Ate Validade = verdadeiro
fimalgoritmo