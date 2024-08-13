//quero desenhar duas linhas verticais de 5 asterísticos
programa
{
	funcao inicio()
	{
		para(inteiro i = 0; i < 6; i++) {
			escreva("* ")
		}
		escreva("\n")
		para(inteiro i = 0; i < 3; i++) {
			se(i != 1) {
				escreva("*\t  *\n")
			} senao {
				para(inteiro j = 0; j < 2; j++) {
					se(j == 1) {
						escreva("L P   ")
					} senao {
						escreva("*   ")
					}
				}
				escreva("*\n")
			}
		}
		para(inteiro i = 0; i < 6; i++) {
			escreva("* ")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 131; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */