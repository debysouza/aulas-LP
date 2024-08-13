//Lista 1 - exercício 2
programa
{
	funcao inicio()
	{
		inteiro idade, soma = 0
		
		para(inteiro i = 1; i <= 5; i++) {
			escreva("Qual é a idade do colega ", i, "? ")
			leia(idade)
			limpa()
			soma += idade
		}
		
		escreva("Qual é a minha idade? ")
		leia(idade)
		limpa()
		soma += idade

		escreva("O tempo de vida meu e dos meus colegas é ", soma, ".")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 54; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */