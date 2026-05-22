programa {
  funcao inicio() {
    cadeia nome
    inteiro idade
    real altura
    caracter genero
    logico estudante 
    
    escreva("digite seu nome: ")
    leia(nome)
    
    escreva("digite sua idade: ")
    leia(idade)
    se(idade < 0) {
      idade = 0
    }

    escreva("digite sua altura: ")
    leia(altura)
    se(altura < 0) {
      altura = 0
    }
    
    escreva("digite seu gênero [M/F]: ")
    leia(genero)

    escreva("é estudante? ")
    leia(estudante)

    escreva("Bem-vindo(a), ", nome, "!\n") 
    escreva("Seu Perfil\n")
    escreva("nome: ", nome, "\n")
    escreva("idade: ", idade, "\n")
    escreva("altura: ", altura, "\n") 
    escreva("gênero: ", genero, "\n")
    escreva("estudante: ", estudante)
  }
}
