//Lista 1 - exercício 4
programa
{
	inclua biblioteca Util --> u
	
	real f, c
	
	funcao inicio() {
		informar()
		aguardar()
		calcular()
		resultado()
	}

	funcao informar() {
		escreva("Informe uma temperatura em Celsius: ")
		leia(c)
	}

	funcao calcular() {
		f = c * (1.8 + 32)
	}

	funcao resultado() {
		escreva("A temperatura de ", c, "ºC equivale a ", f, "ºF.\n")
	}
	
	funcao aguardar() {
		escreva("Calculando")
		para(inteiro i = 0; i <= 2; i++) {
			escreva(".")
			u.aguarde(1000)
		}
		limpa()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 370; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */