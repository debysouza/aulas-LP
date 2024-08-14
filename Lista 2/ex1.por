//Lista 2 - exercício 1
programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> txt
	inclua biblioteca Tipos --> tip
	
	inteiro numeroUniverso = 0, tentativas = 3
	caracter resposta
	cadeia cadNumero
	logico verificaNumero = falso
	caracter numeros[] = {'0','1','2','3','4','5','6','7','8','9'}
	
	funcao inicio()
	{
		pergunta()
		verificaCaracter()
		verificaResposta()
		u.aguarde(2500)
		escreva("\nNão se esqueça: 'A resposta para a pergunta fundamental é apenas o começo.'\n")
	}

	funcao pergunta() {
		escreva("Bem-vindo(a) ao Guia do Mochileiro das Galáxias!")
		u.aguarde(2500)
		escreva("\nAqui está uma pergunta fundamental para você:")
		u.aguarde(2500)
		limpa()
		
		se(tentativas == 1) {
			escreva("\nMas você só tem ", tentativas, " tentativa!")	
		} senao {
			escreva("\nMas você só tem ", tentativas, " tentativas!")
		}
		
		u.aguarde(2500)
		limpa()
		escreva("\nQual é o número que você acha que é a resposta para a pergunta\nfundamental sobre a vida, o universo e tudo mais? ")
		leia(cadNumero)
		limpa()
		aguardar()
		escreva("Você parece ansioso!\n")
		aguardar()
		escreva("Estamos quase lá!\n")
		aguardar()
	}

	funcao verificaResposta() {
		para(inteiro i = 0; i < tentativas; i++) {
			se (numeroUniverso == 42) {
				aguardar()
				escreva("Correto! O número do universo é realmente 42.")
				u.aguarde(4000)
				escreva("\nComo um verdadeiro mochileiro, você deve saber a importância de ter uma toalha\nsempre por perto.")
				u.aguarde(4000)
				escreva("\nLembre-se: 'Uma toalha é um dos itens mais úteis que um mochileiro pode carregar.'")
				pare
			} senao {
				tentativas--
				escreva("\nTente outra vez.")
				u.aguarde(4000)
				limpa()
				pergunta()
			}
		}
		se(tentativas == 1) {
			aguardar()
			escreva("Estourou o número de tentativas!")
			u.aguarde(4000)
			escreva("\nErrado! Leia o Guia do Mochileiro das Galáxias.")
			u.aguarde(4000)
			escreva("\nMas não se preocupe, até mesmo a Vogonologia pode ser difícil de entender às vezes.")
			u.aguarde(4000)
			escreva("\nRecomendo que você leia o Guia e descubra mais sobre as maravilhas do Universo!")
		}
	}

	funcao verificaCaracter() {
		caracter valor
		inteiro caracteresNumero, qtd = 0
		
		caracteresNumero = txt.numero_caracteres(cadNumero)

		para(inteiro i = 0; i < caracteresNumero; i++) {
			valor = txt.obter_caracter(cadNumero, i)
			para(inteiro j = 0; j < 10; j++) {
				se(valor == numeros[j]) {
					qtd += 1
					se(qtd == caracteresNumero) {
						numeroUniverso = tip.cadeia_para_inteiro(cadNumero, 10)
						verificaNumero = verdadeiro
					}
				}
			}
		}
		
		se(verificaNumero != verdadeiro) {
			escreva("Espertinho, você não digitou um caracter inválido ^^\n")
			aguardar()
			limpa()
			pergunta()
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
 * @POSICAO-CURSOR = 814; 
 * @DOBRAMENTO-CODIGO = [47, 77, 104];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numeroUniverso, 8, 9, 14}-{cadNumero, 10, 8, 9}-{valor, 79, 11, 5}-{caracteresNumero, 80, 10, 16}-{qtd, 80, 28, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */