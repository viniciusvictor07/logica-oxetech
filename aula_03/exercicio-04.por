programa {
  funcao inicio() {
    real peso
    real altura
    real IMC
    cadeia classificacao

    escreva("Digite seu peso (kg): ")
    leia(peso)
    
    se(peso <= 0.0 ou peso > 600.0) {
      escreva("Aviso: Peso inválido! Ajustando para 70.0 kg.\n")
      peso = 70.0
    }

    escreva("Digite sua altura (m): ")
    leia(altura)
    
    se(altura < 0.1 ou altura > 3.0) {
      escreva("Aviso: Altura inválida! Ajustando para 1.70 m.\n")
      altura = 1.70
    }

    IMC = peso / (altura * altura)

    se(IMC < 18.5) {
      classificacao = "Abaixo do peso"
    } 
    senao se(IMC <= 24.9) {
      classificacao = "Peso normal"
    } 
    senao se(IMC <= 29.9){
      classificacao = "Sobrepeso"
    }
    senao se(IMC <= 34.9){
      classificacao = "Obesidade grau 1"
    }
    senao se(IMC <= 39.9){
      classificacao = "Obesidade grau 2"
    }
    senao se(IMC >= 40){
      classificacao = "Obesidade grau 3"
    }

    escreva("\nSeu IMC é de ", IMC, " sua classificação é: ", classificacao)
  }
}