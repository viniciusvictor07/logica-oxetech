programa {
  funcao inicio() {
    cadeia nome
    real peso
    real altura
    real IMC
    
    escreva("nome: ")
    leia(nome)
    
    escreva("peso (kg): ")
    leia(peso) 

    escreva("altura (m): ")
    leia(altura)

    IMC = peso / (altura * altura)
    escreva(nome, ", seu IMC é ", IMC)  
    }
}
