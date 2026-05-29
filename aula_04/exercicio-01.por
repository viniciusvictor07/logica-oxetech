programa {
  funcao inicio() {
    inteiro qntUsuarios
    cadeia nomeUsuario
    inteiro idadeUsuario
    cadeia situacaoCNH

    escreva("Quantos usuários deseja cadastrar? ")
    leia(qntUsuarios)
    
    para (inteiro i = 0; i < qntUsuarios; i++) {
      escreva("Digite o nome do ", i+1, "º usuário: \n")
      leia(nomeUsuario)
      
      escreva("Digite a idade de ", nomeUsuario, ": ")
      leia(idadeUsuario)

      se (idadeUsuario < 0 ou idadeUsuario > 120) {
        escreva("\nIdade inválida! Definindo idade para 16 anos.\n")
        idadeUsuario = 16
      }

      se (idadeUsuario < 18) {
        situacaoCNH = "Usuário não pode tirar a CNH!\n"
      }
      senao {
        situacaoCNH = "Usuário pode tirar a CNH!\n"
      }

      escreva(nomeUsuario, " tem ", idadeUsuario, " anos. ", situacaoCNH, "\n")
    }
  }
}
