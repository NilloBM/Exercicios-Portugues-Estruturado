
//Resolver Bug da Coluna, as vezes não ganha.
algoritmo "Jogo da Velha"
var
   MTab: Vetor[1..3,1..3] de inteiro
   JTab: Vetor[1..3,1..3] de caractere
   L,C,J,Cont,AuxMTab: inteiro
   AuxJTab,MsgErro,MSGVenc: caractere


Funcao EntradaJogador(Cont:inteiro):inteiro
Inicio

   Se Cont%2=0 entao
      Escreva("Vai jogar [O] em qual posição? ")
      AuxJTab := "  O"
   SeNao
      Escreva("Vai jogar [X] em qual posição? ")
      AuxJTab := "  X"
   FimSe
   Leia(J)
   Retorne J
FimFuncao

Procedimento TesteVencedor()
Var
   AuxO,AuxX,ContLX,ContLO,ContCX,ContCO,ContDX,ContDO,ContDX2,ContDO2: inteiro
Inicio

   ContLX := 0
   ContLO := 0
   ContDX := 0
   ContDO := 0

   Para L := 1 ate 3 faca
      ContCX := 0
      ContCO := 0
      Para C:= 1 ate 3 faca
         Se JTab[L,C] = "  X" Entao
            ContCX := ContCX + 1
            Se (ContCX = 3) Entao
               MSGVenc := "Parabéns, você GANHOU!
            FimSe
         FimSe

         Se JTab[L,C] = "  O" Entao
            ContCO := ContCO + 1
            Se (ContCO = 3) Entao
               MSGVenc := "Parabéns, você GANHOU!
            FimSe
         FimSe

         Se (JTab[L,C] = "  X") Entao
            Se (C=AuxX) Entao
               ContLX := ContLX + 1
            SeNao
               AuxX := C
               ContLX := 1
            FimSe
         FimSe
         Se (ContLX = 3) Entao
            MSGVenc := "Parabéns, você GANHOU!
         FimSe


         Se JTab[L,C] = "  O" Entao
            Se (C=AuxO) Entao
               ContLO := ContLO + 1
            SeNao
               AuxO := C
               ContLO := 1
            FimSe
         FimSe
         Se (ContLO = 3) Entao
            MSGVenc := "Parabéns, você GANHOU!
         FimSe

         Se JTab[L,C] = "  X" Entao
            Se (L = C) Entao
               ContDX := ContDX + 1
               Se (ContDX = 3) Entao
                  MSGVenc := "Parabéns, você GANHOU!
               FimSe
            FimSe
            Se (C*3=L) ou (L*3=C) ou (L+C=4) entao
               ContDX2 := ContDX2 + 1
               Se (ContDX2 = 3) Entao
                  MSGVenc := "Parabéns, você GANHOU!
               FimSe
            FimSe
         FimSe


          Se JTab[L,C] = "  O" Entao
            Se (L = C) Entao
               ContDO := ContDO + 1
               Se (ContDO = 3) Entao
                  MSGVenc := "Parabéns, você GANHOU!
               FimSe
            FimSe
            Se (C*3=L) ou (L*3=C) ou (L+C=4) entao
               ContDO2 := ContDO2 + 1
               Se (ContDO2 = 3) Entao
                  MSGVenc := "Parabéns, você GANHOU!
               FimSe
            FimSe
         FimSe

   FimPara
FimPara

FimProcedimento

inicio

   Repita

      EscrevaL("+---+---+---+")
      AuxMTab := 0
      Para L := 1 ate 3 faca
         Para C := 1 ate 3 faca
            Mtab[L,C] := AuxMTab + C
            Se Jtab[L,C] = "" Entao
               Se (MTab[L,C] = J) entao
                  Jtab[L,C] := AuxJtab
                  Escreva("|",JTab[L,C]:3)
               Senao
                  Escreva("|",MTab[L,C]:3)
               FimSe
            Senao
               Escreva ("|",JTab[L,C]:3)
               Se (MTab[L,C] = J) entao
                  MsgErro := "Jogada inválida, Tente novamente."
                  Cont := Cont - 1
               FimSe
            FimSe
         FimPara
         AuxMTab := AuxMTab + C
         EscrevaL("|")
         EscrevaL("+---+---+---+")

      FimPara

      Cont := Cont + 1

      Se MsgErro <> "" Entao
         EscrevaL(MsgErro)
      FimSe

      TesteVencedor()

      Se MSGVenc = "" Entao
         J := EntradaJogador(Cont)
         LimpaTela
      Senao
         EscrevaL(MSGVenc)
         Cont := 9
      FimSe
   Ate Cont = 9
fimalgoritmo