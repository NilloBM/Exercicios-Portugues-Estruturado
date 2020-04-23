algoritmo "EXERCICIO-X"
var
   A: vetor[1..6] de real
   B: vetor[1..6] de caractere
   X,I,P: inteiro
   V: logico
inicio
   //ENTRADA DE DADOS DOS VETORES 'A'
   Para X := 1 ate 6 faca
      Leia(A[X])
   FimPara
   //ENTRADA DE DADOS DO VETOR 'B'
   Para X := 1 ate 6 faca
      V := Falso
      Se X%2=1 entao
         Enquanto (V = Falso) e (I<6) faca
            I := I + 1
            Se A[I]%2=1 entao
               B[X] := Numpcarac(A[I])
               V := verdadeiro
            FimSe
         FimEnquanto
         Se (I = 6) e (V = Falso) entao
               B[X] := "X"
         FimSe
      Senao
         Enquanto (V = Falso) e (P<6) faca
            P := P + 1
            Se A[P]%2 = 0 entao
               B[X] := Numpcarac(A[P])
               V := verdadeiro
            FimSe
         FimEnquanto
         Se (P = 6) e (V = Falso) entao
               B[X] := "X"
         FimSe
      FimSe
   FimPara
   //SAIDA DE DADOS DO VETOR 'A'
   EscrevaL("VETOR A:")
   Para X := 1 ate 6 faca
      Escreva(B[X]," ")
   FimPara
fimalgoritmo