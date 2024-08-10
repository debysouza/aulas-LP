programa
{
	funcao inicio()
	{
		caracter texto

		escreva("Você deseja realizar o login?\n's' para sim\n'n' para não\n")
		leia(texto)

		escolha(texto)
		{
			caso 's':
				login()
			pare
			caso 'n':
				escreva("Obrigado, até a próxima!")
			pare
			caso contrario:
				escreva("Opção inválida!\n")
				inicio()
			pare
		}
		
	}

	funcao login()
	{
		cadeia nome, senha
		
		escreva("Digite seu nome: ")
		leia(nome)
		limpa()
		escreva("Digite sua senha: ")
		leia(senha)
		limpa()

		se(nome == "Sávio" e senha == "123") {
			//Verdadeiro e Verdadeiro
			escreva("Acesso permitido!")
		} senao {
			//Verdadeiro e Falso
			//Falso e Verdadeiro
			//Falso e Falso
			escreva("Acesso negado!")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 186; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {texto, 5, 11, 5}-{nome, 28, 9, 4}-{senha, 28, 15, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */