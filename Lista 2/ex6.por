/*
6. O sistema “Múltiplos de 6” irá pedir ao usuário um intervalo, maior que 100,
de valores inteiros. Após, irá somar os três primeiros com os três últimos
múltiplos de 6 desse intervalo. Ao final, imprime os múltiplos e o resultado
da soma.
*/

programa {
	inclua biblioteca Util --> u
	
	inteiro comeco, fim, aux, soma=0, contador=0
	
	funcao inicio() {
		escreva("Bem-vindo(a) ao programa Múltiplos de 6.\n\nDigite o início do intervalo: ")
		leia(comeco)
		escreva("Digite o fim do intervalo: ")
		leia(fim)
		u.aguarde(3000)
		limpa()

		escreva("Os três primeiros múltiplos de 6 do intervalo são: ")
		para(inteiro i=comeco; i<=fim; i++) {
			aux = i % 6
			se(aux==0 e contador<3) {
				escreva(i, "\t")
				soma += i
				contador++
			}
		}

		u.aguarde(3000)
		limpa()
		escreva("Os três últimos múltiplos de 6 do intervalo são: ")
		contador=0
		para(inteiro i=fim; i>=comeco; i--) {
			aux = i % 6
			se(aux==0 e contador<3) {
				escreva(i, "\t")
				soma += i
				contador++
			}
		}

		u.aguarde(3000)
		limpa()
		escreva("A soma dos três primeiros múltiplos de 6 com os três últimos é igual a ", soma, ".\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 411; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {i, 22, 15, 1}-{i, 35, 15, 1};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */