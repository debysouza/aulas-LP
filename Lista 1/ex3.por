//Lista 1 - exercício 3
programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Tipos --> tip
	inclua biblioteca Texto --> tex
	inclua biblioteca Matematica --> mat
	
	real num1 = 0.0, num2 = 0.0, soma, sub, mult, div
	cadeia cadNum1, cadNum2
	inteiro opcao
	logico verifica = falso, verificaNum1 = falso, verificaNum2 = falso
	caracter numeros[] = {'0','1','2','3','4','5','6','7','8','9'}
	
	funcao inicio()
	{
		escreva("Olá, eu sou a CALC e vou te ajudar a resolver\nsuas operações matemáticas.\n")
		menuPrincipal()
		enquanto(verifica ==  falso) {
			menuRetorno()
		}
	}

	funcao informeValores() {
		cadeia valor, n
		
		para(inteiro i = 1; i < 3; i++) {
			escreva("Informe o ", i ,"º número: ")
			n = tip.inteiro_para_cadeia(i, 10)
			valor = tex.substituir("num0", "0", n)
			se(valor == "num1") {
				leia(cadNum1)
			} senao {
				leia(cadNum2)
			}
		}
		verificaCaracter()
	}

	funcao somar() {
		soma = mat.arredondar(num1 + num2, 2)
		escreva("O resultado da soma é ", soma, ".\n")
		aguardar()
		limpa()
	}

	funcao subtrair() {
		sub = mat.arredondar(num1 - num2, 2)
		escreva("O resultado da subtração é ", sub, ".\n")
		aguardar()
		limpa()
	}

	funcao multiplicar() {
		mult = mat.arredondar(num1 * num2, 2)
		escreva("O resultado da multiplicação é ", mult, ".\n")
		aguardar()
		limpa()
	}

	funcao dividir() {
		se(num2 != 0) {
			div = mat.arredondar(num1 / num2, 2)
			escreva("O resultado da divisão é ", div, ".\n")
			aguardar()
			limpa()
		} senao {
			escreva("Valor inválido no denominador!\nInforme o segundo número diferente de zero.")
			u.aguarde(1000)
			limpa()
			informeValores()
			dividir()
		}
	}

	funcao menuPrincipal() {
		escreva("Por favor, escolha uma das opções abaixo:\n[1] Soma\n[2] Subtração\n[3] Multiplicação\n[4] Divisão\nOpção escolhida: ")
		leia(opcao)
		limpa()

		escolha(opcao) {
			caso 1:
				informeValores()
				somar()
			pare
			caso 2:
				informeValores()
				subtrair()
			pare
			caso 3:
				informeValores()
				multiplicar()
			pare
			caso 4:
				informeValores()
				dividir()
			pare
			caso contrario:
				escreva("Opção inválida!\nTente novamente.")
				u.aguarde(1000)
				menuPrincipal()
			pare
		}
	}

	funcao inteiro menuRetorno() {
		escreva("Deseja realizar nova operação?\n[1] Sim\n[2] Não\nOpção escolhida: ")
		leia(opcao)
		limpa()

		escolha(opcao) {
			caso 1:
				menuPrincipal()
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
		retorne opcao
	}

	funcao aguardar() {
		para(inteiro i = 0; i <= 2; i++) {
			escreva(".")
			u.aguarde(1000)
		}
	}

	funcao verificaCaracter() {
		caracter valor1, valor2
		inteiro caracteresNum1, caracteresNum2, qtd = 0
		
		caracteresNum1 = tex.numero_caracteres(cadNum1)
		caracteresNum2 = tex.numero_caracteres(cadNum2)

		para(inteiro i = 0; i < caracteresNum1; i++) {
			valor1 = tex.obter_caracter(cadNum1, i)
			para(inteiro j = 0; j < 10; j++) {
				se(valor1 == numeros[j]) {
					qtd += 1
					se(qtd == caracteresNum1) {
						num1 = tip.cadeia_para_real(cadNum1)
						verificaNum1 = verdadeiro
					}
				}
			}
		}

		se(verificaNum1 == verdadeiro) {
			qtd = 0
			para(inteiro i = 0; i < caracteresNum2; i++) {
				valor2 = tex.obter_caracter(cadNum2, i)
				para(inteiro j = 0; j < 10; j++) {
					se(valor2 == numeros[j]) {
						qtd += 1
						se(qtd == caracteresNum2) {
							num2 = tip.cadeia_para_real(cadNum2)
							verificaNum2 = verdadeiro
							escreva("Calculando")
							aguardar()
							limpa()
						}
					}
				}
			}
		}
		
		se(verificaNum1 != verdadeiro ou verificaNum2 != verdadeiro) {
			escreva("Valores inválidos!\nPor favor informe números válidos.")
			aguardar()
			limpa()
			informeValores()
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2649; 
 * @DOBRAMENTO-CODIGO = [23, 39, 46, 53, 60, 75, 105, 128, 135];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {num1, 9, 6, 4}-{num2, 9, 18, 4}-{soma, 9, 30, 4}-{cadNum1, 10, 8, 7}-{cadNum2, 10, 17, 7}-{verificaNum1, 12, 26, 12}-{verificaNum2, 12, 48, 12}-{numeros, 13, 10, 7}-{valor, 25, 9, 5}-{n, 25, 16, 1}-{valor1, 137, 11, 6}-{valor2, 137, 19, 6}-{caracteresNum1, 138, 10, 14}-{caracteresNum2, 138, 26, 14};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */