//Lista 1 - exercício 5
programa
{
	inclua biblioteca Util --> u

	inteiro opcao, a = 0, b = 0
	logico verifica = falso
	
	funcao inicio() {
		menu()
		enquanto(verifica ==  falso) {
			menuRetorno()
		}
	}

	funcao menu() {
		escreva("Escolha uma das expressões para conhecer seu resultado:\n[1] 2 + 3 - 5 * 8 - 4 + 354 - 521 + 7 * 66\n[2] 2 + 7 * (14 - 21) + 28 * 3 * 42 + 740 - (156 + 4 + 40) * 9\nOpção escolhida: ")	
		leia(opcao)
		
		escolha(opcao) {
			caso 1:
				calcular(opcao)
				aguardar()
				escreva("Expressão a: 2 + 3 - 5 * 8 - 4 + 354 - 521 + 7 * 66 = ", a)
			pare
			caso 2:
				calcular(opcao)
				aguardar()
				escreva("Expressão b: 2 + 7 * (14 - 21) + 28 * 3 * 42 + 740 - (156 + 4 + 40) * 9 = ", b)
			pare
			caso contrario:
				escreva("Opção inválida!\nTente novamente!")
				u.aguarde(1000)
				limpa()
				menu()
			pare
		}
	}

	funcao menuRetorno() {
		escreva("\nDeseja realizar nova operação?\n[1] Sim\n[2] Não\nOpção escolhida: ")
		leia(opcao)
		limpa()

		escolha(opcao) {
			caso 1:
				menu()
			pare
			caso 2:
				escreva("Ok, volte sempre que precisar!")
				verifica = verdadeiro
			pare
			caso contrario:
				escreva("Opção inválida!\nTente novamente.")
				u.aguarde(1000)
				limpa()
				menuRetorno()
			pare
		}
	}
	
	funcao inteiro calcular(inteiro op) {
		se(op == 1) {
			a = 2 + 3 - 5 * 8 - 4 + 354 - 521 + 7 * 66
			retorne a
		} senao {
			b = 2 + 7 * (14 - 21) + 28 * 3 * 42 + 740 - (156 + 4 + 40) * 9
			retorne b
		}
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
 * @POSICAO-CURSOR = 112; 
 * @DOBRAMENTO-CODIGO = [15, 39, 71];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */