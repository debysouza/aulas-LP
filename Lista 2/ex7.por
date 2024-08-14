/*
7. O programa “Estudo da Madrugada” irá calcular a porcentagem de
estudantes que estudam durante a madrugada. Para isso, o assistente
administrativo irá interagir com o programa. Primeiro ele deve perguntar
ao assistente quantos estudantes têm na turma. Após, com base em
estudos anteriores, o assistente verificou que, na primeira disciplina da
residência, 35% dos estudantes estudam de madrugada e na segunda
disciplina, esse valor sobe 30%. Ao considerar a média das duas disciplinas e
a quantidade de estudantes da turma, o programa deve informar ao
assistente quantos estudantes, em média, estudam de madrugada nas
duas primeiras disciplinas.
*/
programa {
	inclua biblioteca Tipos --> ti

	const real LOGICA=0.35, BANCO=0.30
	inteiro estudantes, primeiraDisciplina, segundaDisciplina, media
	
	funcao inicio() {
		escreva("Bem-vindo(a) ao programa Estudo da Madrugada!\nAssistente, informe quantos estudantes têm na turma: ")
		leia(estudantes)
		limpa()

		primeiraDisciplina = ti.real_para_inteiro(estudantes * LOGICA)
		segundaDisciplina = primeiraDisciplina + ti.real_para_inteiro(primeiraDisciplina * BANCO)

		media = (primeiraDisciplina + segundaDisciplina) / 2

		escreva("A média de estudantes que estudam de madrugada nas duas primeiras disciplinas é ", media, ".\n")
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 963; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {primeiraDisciplina, 17, 21, 18}-{segundaDisciplina, 17, 41, 17}-{media, 17, 60, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */