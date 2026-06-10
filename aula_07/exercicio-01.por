programa {
  funcao inicio() {
    real baseRetangulo
    real alturaRetangulo

    escreva("Digite a base do retângulo: ")
    leia(baseRetangulo)

    escreva("Digite a altura do retângulo: ")
    leia(alturaRetangulo)

    real areaRetangulo = calcularAreaRetangulo(baseRetangulo, alturaRetangulo) 
    escreva("Área do retângulo: ", areaRetangulo)
  }

  funcao real calcularAreaRetangulo(real base, real altura) {
    se (base <= 0) {
      base = 1
    }
    se (altura <= 0) {
      altura = 1 
    }
    
    retorne base * altura
  }
}
