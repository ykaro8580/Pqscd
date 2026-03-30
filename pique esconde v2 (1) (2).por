programa {
    inclua biblioteca Util
    funcao espere(){
        para (inteiro i = 1; i <= 3; i++) {
            escreva(".")
            Util.aguarde(1000)
        }

    }
    funcao inicio() {
        inteiro pontuacaopl = 0
        inteiro pontuacaopc = 0
        inteiro rodada = 1
        cadeia esconder, op
        cadeia escolhapc
        inteiro sorteio

        escreva("Pique esconde!\n")
        escreva("\n Escolha um lugar (sala / cozinha / quarto): ")
        leia(esconder)

        enquanto(rodada <= 3){
            
        // Contagem
        para (inteiro i = 1; i <= 5; i++) {
            escreva("contagem: ", i, "\n")
            Util.aguarde(1000)
        }

        sorteio = Util.sorteia(1, 3)

        se (sorteio == 1) {
            escolhapc = "sala"
        }
        senao se (sorteio == 2) {
            escolhapc = "cozinha"
        }
        senao {
            escolhapc = "quarto"
        }
        escreva("Pronto ou não, lá vou eu!\n")
        espere()
        escreva("\n")
        se (escolhapc == esconder) {

            escreva("Vou procurar na(o) ", escolhapc,"\n")
            espere()
          
            escreva("\nTe achei!\n")
            pontuacaopc = pontuacaopc + 1
            escreva(pontuacaopl)
            escreva(" x ")
            escreva(pontuacaopc)
        }
        senao {
            escreva("Vou procurar na(o) ", escolhapc,"\n")
            espere()

            escreva("\nVocê escapou\n")
            pontuacaopl = pontuacaopl + 1
            escreva(pontuacaopl)
            escreva(" x ")
            escreva(pontuacaopc)
           
        }
            se(rodada < 3){
            escreva("\nVocê vai trocar o esconderijo? (sim ou não): \n")
            leia(op)

            se( op == "sim"){
             escreva("\n Escolha um lugar (sala / cozinha / quarto): \n")
             leia(esconder)
            }
         } rodada = rodada + 1
                
        } se(pontuacaopc > pontuacaopl){
          escreva("\nO Pc Ganhou o jogo!")
        }senao{
          escreva("\nVocê Ganhou o jogo")
        }
    }
}