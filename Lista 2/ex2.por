//Lista 2 - exercício 2
programa
{
	inclua biblioteca Util --> u
	inclua biblioteca Texto --> txt
	inclua biblioteca Tipos --> tip
	inclua biblioteca Calendario --> c

	cadeia dataNasc, dia, mes, ano
	inteiro idade = 0, d = 0, m = 0, a = 0
	caracter numeros[] = {'0','1','2','3','4','5','6','7','8','9'}
	logico verificaDia = falso, verificaMes = falso, verificaAno = falso
	const inteiro IDADE_MAXIMA = 120
	
	funcao inicio()
	{
		pergunta()
		verificaCaracter()
		se(verificaDia != verdadeiro ou verificaMes != verdadeiro ou verificaAno != verdadeiro) {
			escreva("Valores inválidos!\nPor favor informe uma data válida.")
			aguardar()
			pergunta()
		} senao {
			aguardar()
			calcular()
			se(idade <= IDADE_MAXIMA) {
				escreva("Sua idade é ", idade, "!")
			} senao {
				escreva("Valores inválidos!\nPor favor informe uma data válida.")
				aguardar()
				pergunta()
			}				
		}
	}

	funcao pergunta() {
		escreva("Bem-vindo(a) ao Programa Minha Idade!")
		u.aguarde(2500)
		escreva("\nInforme sua data de nascimento da seguinte forma (dd/MM/yyyy): ")
		leia(dataNasc)
		limpa()
	}

	funcao calcular() {
		idade = c.ano_atual() - a
		se(m <= c.mes_atual() e d < c.dia_mes_atual()) {
			idade -= 1
		}	
	}

	funcao verificaCaracter() {
		caracter valor1, valor2, valor3
		inteiro caracteresNumero, qtd = 0

		dia = txt.extrair_subtexto(dataNasc, 0, 2)
		mes = txt.extrair_subtexto(dataNasc, 3, 5)
		ano = txt.extrair_subtexto(dataNasc, 6, 10)
		
		caracteresNumero = txt.numero_caracteres(dia)
		para(inteiro i = 0; i < caracteresNumero; i++) {
			valor1 = txt.obter_caracter(dia, i)
			para(inteiro j = 0; j < 10; j++) {
				se(valor1 == numeros[j]) {
					qtd += 1
					se(qtd == caracteresNumero) {
						d = tip.cadeia_para_inteiro(dia, 10)
						verificaDia = verdadeiro
					}
				}
			}
		}

		se(verificaDia == verdadeiro) {
			qtd = 0
			caracteresNumero = txt.numero_caracteres(mes)
			para(inteiro i = 0; i < caracteresNumero; i++) {
				valor2 = txt.obter_caracter(mes, i)
				para(inteiro j = 0; j < 10; j++) {
					se(valor2 == numeros[j]) {
						qtd += 1
						se(qtd == caracteresNumero) {
							m = tip.cadeia_para_inteiro(mes, 10)
							verificaMes = verdadeiro
						}
					}
				}
			}
		}

		se(verificaMes == verdadeiro) {
			qtd = 0
			caracteresNumero = txt.numero_caracteres(ano)
			para(inteiro i = 0; i < caracteresNumero; i++) {
				valor2 = txt.obter_caracter(ano, i)
				para(inteiro j = 0; j < 10; j++) {
					se(valor2 == numeros[j]) {
						qtd += 1
						se(qtd == caracteresNumero) {
							a = tip.cadeia_para_inteiro(ano, 10)
							verificaAno = verdadeiro
						}
					}
				}
			}
		}
	}
	
	funcao aguardar() {
		escreva("\nCalculando")
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
 * @POSICAO-CURSOR = 720; 
 * @DOBRAMENTO-CODIGO = [35, 43, 50, 107];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {a, 10, 34, 1}-{caracteresNumero, 53, 10, 16}-{qtd, 53, 28, 3};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */