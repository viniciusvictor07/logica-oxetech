programa {
  funcao inicio() {
    cadeia nomeUsuario
    inteiro idadeUsuario

    escreva("Escreva seu nome: ")
    leia(nomeUsuario)

    escreva(nomeUsuario, ", digite sua idade: ")
    leia(idadeUsuario)

    exibirMensagem(nomeUsuario, idadeUsuario)
  }

  funcao exibirMensagem(cadeia nome, inteiro idade) {
    se (idade < 0 ou idade > 120) {
      escreva("Idade inválida! Definindo idade para 1.\n")
      idade = 1
    }
    
    escreva("Olá ", nome, ", você tem ", idade, " anos. Seja bem-vindo(a)!")
  }
}
