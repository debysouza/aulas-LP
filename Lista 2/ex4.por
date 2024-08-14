/*
4. O programa "Triângulo" irá pedir três valores de ângulos e irá classificar os
triângulos em Acutângulo, Obtusângulo ou Retângulo (caso não se recorde
das classificações, pesquise por “classificação de triângulo em relação aos
ângulos”). Depois disso, escreva os ângulos e a classificação do triângulo.
*/
programa {
	inclua biblioteca Matematica --> mat

	const inteiro TAMANHO = 3
	real angulo, soma=0.0, vetor[TAMANHO]
	
	funcao inicio() {
		escreva("Bem-vindo(a) ao programa Triângulo.\n\n")

		para(inteiro i=0; i<TAMANHO; i++) {
			escreva("Informe o valor do ", i+1, "° ângulo do triângulo: ")
			leia(angulo)
			limpa()
			vetor[i] = mat.arredondar(angulo, 1)
			soma += mat.arredondar(angulo, 1)
		}
		se(soma == 180.0) {
			se(vetor[0] == 90.0 e vetor[1] == 90.0) {
				imprimirAngulos()
				escreva("\nTriângulo Retângulo!\n")
			} senao se(vetor[0] > 90.0 ou vetor[1] > 90.0 ou vetor[2] > 90.0) {
				imprimirAngulos()
				escreva("\nTriângulo Obtusângulo!\n")
			} senao {
				imprimirAngulos()
				escreva("\nTriângulo Acutângulo!\n")
			}
		} senao {
			escreva("A soma dos ângulos foi igual a ", soma, ".\nOs ângulos informados não formam um triângulo!\n")
		}
	}

	funcao imprimirAngulos() {
		escreva("Os ângulos informados foram: ")
		para(inteiro i=0; i<TAMANHO; i++) {
			escreva(vetor[i], "\t")
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 713; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetor, 11, 24, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */