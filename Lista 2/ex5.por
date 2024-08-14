/*
5. O sistema “Converter” vai pedir ao usuário um valor do tipo real para
representar as horas. Após, irá calcular quantos segundos equivalem à hora
informada. O resultado na tela deve ser do passo a passo da operação.
*/
programa {
	inclua biblioteca Util --> u
	inclua biblioteca Tipos --> ti
	
	cadeia horas
	real segundos
	inteiro s
	
	funcao inicio() {
		escreva("Bem-vindo(a) ao sistema Converter!\nAqui você irá informar uma quantidade de horas que deseja converter para segundos.\n\n")
		u.aguarde(3000)
		limpa()
		calcular()		
	}

	funcao calcular() {
		escreva("Informe as horas: ")
		leia(horas)
		limpa()
		se(ti.cadeia_e_real(horas)) {
			segundos = ti.cadeia_para_real(horas) * 3600
			escreva("Para converter ", horas, " horas em segundos, multiplicamos as horas por 3600.\n\nNesse caso, obtemos ", horas, " * 3600 = ", segundos, " segundos.\n")
		} senao se(ti.cadeia_e_inteiro(horas, 10)) {
			s = ti.cadeia_para_inteiro(horas, 10) * 3600
			escreva("Para converter ", horas, " horas em segundos, multiplicamos as horas por 3600.\n\nNesse caso, obtemos ", horas, " * 3600 = ", s, " segundos.\n")
		} senao {
			escreva("Opção inválida! Tente novamente!\n")
			u.aguarde(3000)
			limpa()
			calcular()
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1155; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */