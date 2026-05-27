programa {
  funcao inicio() {
    inteiro anoAtual 
    inteiro anoNascimento 

    escreva("Digite o ano atual: ")
    leia(anoAtual)

    se(anoAtual != 2026) {
      escreva("Ano atual inválido, definindo valor para 2026.\n")
      anoAtual = 2026
    }

    escreva("Digite seu ano de nascimento: ")
    leia(anoNascimento)

    se(anoNascimento < 0 ou anoNascimento > anoAtual) {
      escreva("Ano de nascimento inválido, definindo data para 2026.\n")
      anoNascimento = 2026
    }

    inteiro idadeUsuario = anoAtual - anoNascimento
    
    escreva("\nEm ", anoAtual, " o usuário completará ", idadeUsuario, " anos\n")
    
    se(idadeUsuario >= 18) {
      escreva("Usuário é maior de idade, pode tirar habilitação!")
    } 
    senao{
      escreva("Usuário é menor de idade, não pode tirar habilitação!")
    }
  }
}
