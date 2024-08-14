//Lista 2 - exercício 3
programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Tipos --> tip
	
	inteiro opcao
	const inteiro LINHA = 3, COLUNA = 2, TAMANHO = 3
	cadeia produtos[LINHA][COLUNA] = {{"Bandeira do Vasco", "10"}, {"Esfera do Dragão", "7"}, {"Voucher Vale 10 em LP", "0"}}
	cadeia listaProdComEstoque[TAMANHO], listaProdSemEstoque[TAMANHO]
	
	funcao inicio()
	{
		menu()
	}

	funcao menu() {
		escreva("Escolha uma das opções abaixo:\n[1] Listar produtos com estoque\n[2] Listar produtos sem estoque\n[3] Sair\nOpção escolhida: ")
		leia(opcao)
		aguardar()
		limpa()
		escolha(opcao) {
			caso 1:
				escreva("Lista de produtos com estoque:\n")
				consultar()
				imprimir(opcao)
			pare
			caso 2:
				escreva("Lista de produtos sem estoque:\n")
				consultar()
				imprimir(opcao)
			pare
			caso 3:
				menuRetorno()
			pare
			caso contrario:
				escreva("Opção inválida! Tente novamente!")
				aguardar()
				limpa()
				menu()
			pare
		}
	}

	funcao menuRetorno() {
		escreva("Deseja realmente sair?\n[1] Sim\n[2] Não\nOpção escolhida: ")
		leia(opcao)
		escolha(opcao) {
			caso 1:
				escreva("Até logo!\n")
			pare
			caso 2:
				aguardar()
				limpa()
				menu()
			pare
			caso contrario:
				escreva("Opção inválida! Tente novamente!")
				aguardar()
				limpa()
				menuRetorno()
			pare
		}
	}
	
	funcao imprimir(inteiro op) {
		para(inteiro i = 0; i < TAMANHO; i++) {
			se(op == 1 e listaProdComEstoque[i] != "x") {
				escreva("- ", listaProdComEstoque[i], "\n")
			} senao se(op == 2 e listaProdSemEstoque[i] != "x") {
				escreva("- ", listaProdSemEstoque[i], "\n")
			}
		}
	}
	
	funcao consultar() {
		inteiro k = 0, w = 0
		
		para(inteiro i = 0; i < LINHA; i++) {
			se(tip.cadeia_para_inteiro(produtos[i][1], 10) > 0) {
				listaProdComEstoque[k] = produtos[i][0]
				k++
			} senao {
				listaProdSemEstoque[w] = produtos[i][0]
				w++
			}
		}

		para(inteiro i = 0; i < TAMANHO; i++) {
			se(i > k-1) {
				listaProdComEstoque[k] = "x"
			}
			se(i > w-1) {
				listaProdSemEstoque[k] = "x"
			}
		}
	}
	
	funcao aguardar() {
		escreva("\nAguarde")
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
 * @POSICAO-CURSOR = 989; 
 * @DOBRAMENTO-CODIGO = [16, 44, 65, 75, 98];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {listaProdComEstoque, 10, 8, 19}-{listaProdSemEstoque, 10, 38, 19}-{k, 77, 10, 1}-{w, 77, 17, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */