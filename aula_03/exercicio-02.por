programa {
  funcao inicio() {
    inteiro idadeUsuario

    escreva("Digite sua idade: ")
    leia(idadeUsuario)

    se(idadeUsuario >= 65) {
      escreva("Você é um(a) idoso(a).")
    }
    senao se(idadeUsuario >= 18) {
      escreva("Você é um(a) adulto(a).")
    }
    senao se(idadeUsuario >= 13) {
      escreva("Você é um(a) adolescente.")
    }
    senao{
      escreva("Você é uma criança.")
    }
  }
}
