programa {
  funcao inicio() {
    cadeia nome
    real nota1
    real nota2
    real media
    
    escreva("digite seu nome: ")
    leia(nome)
    
    escreva("digite a primeira nota: ")
    leia(nota1) 

    escreva("digite a segunda nota: ")
    leia(nota2)

    media = (nota1 + nota2) / 2 
    escreva("O aluno ", nome, " obteve a média final ", media)
  }
}
