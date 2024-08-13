//contador decrescente com intervalo de 0 a 6.
programa
{
	inclua biblioteca Util --> u
	
	funcao inicio()
	{
		inteiro contador = 6

		para(contador; contador >= 0; contador--) {
			escreva("\n", contador)
			u.aguarde(1000)
		}
		
		contador = 6
		enquanto(contador > 0) { //ou >= 1
		//enquanto(contador >= -1 e contador < 6) {
			escreva("\n", contador)
			u.aguarde(1000)
			contador--
		}

		faca {
			escreva("\n", contador)
			u.aguarde(1000)
			contador++
		} enquanto(contador <= 6)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 494; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {contador, 8, 10, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */