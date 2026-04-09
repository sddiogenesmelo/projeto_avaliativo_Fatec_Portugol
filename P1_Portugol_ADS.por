programa
{
	// DIOGENES MELO
	// Avaliaçãoo P1: CRIE UM PROGRAMA UTILIZANDO OS CONCEITOS APRENDIDO EM SALA DE AULA
	
	// NUNCA USEI ISSO BUSQUEI INSTRUCões
	inclua biblioteca Texto --> txt
	inclua biblioteca Matematica --> mat
	
	// VARIÁVEIS GLOBAIS
	real valor = 0.0, valorDesconto = 0.0, valorTotal = valor
	cadeia nome, sobrenome, telefone, endereco, cidade, tentativa, sabor = "", senhaCadastro = "", senhaConferida = ""
	inteiro selecao = 0, tamanhoSenha, comanda = 1
	logico senhaValida = falso // aqui apanhei muito para descobrir que tem que ser falso

	funcao inicio (){

		escreva("******************** BEM VINDO A PIZZARIA MORTE LENTA ********************\n")		

		//FAZ A VERIFICAÇÃO SE A SENHA POSSUI 8 DIGITOS 
		//FOI NECESSASRIO INCLUIR A BIBLIOTECA TEXTO 
		//E CONVERTER A VARIAVEL TENTATIVA DE INTEIRO PARA CADEIA
		enquanto(nao senhaValida){ 
						
			escreva("\nDigite sua senha para login: \n")
			leia(tentativa)

			tamanhoSenha = txt.numero_caracteres(tentativa)

			limpa()

			se(tamanhoSenha == 8){ //QUANTIDADE DE DIGITOS PARA VERIFICAR
				senhaValida = verdadeiro //SE VERDADEIRO SEGUE PARA VERIFICAÇÃO DE CADASTRO
									//SE FALSO VOLTA PARA DIGITAR NOVEMENTE
				
			//CONDIÇÃO SE: VERIFICA SE SENHA CONFERE COM A SENHAS DO
			//USUÁRIO CADASTRADO OU NECESSITA DE CADASTRO
				se(tentativa == "12345678"){
					usuarioCadastrado() // DIRECIONA PARA A FUNÇÃO USUARIO CADASTRADO
				}senao{
					escreva("USUÁRIO NÃO CADASTRADO, REALIZE O CADASTRO!\n")
					cadastrarUsuario() // ENVIA PARA REALIZAR CADASTRO NA FUNÇÃO CADASTRAR USUARIO
				}
			} senao 
				escreva("SENHA INVÁIDA \nVERIFIQUE E TENTE NOVAMENTE: \n")
		}				   
	}
		
	funcao usuarioCadastrado(){ // USUARIO CADASTRADO (MEU "BANCO DE DADOS")
		
		//senhaCadastrada = "12345678"
		nome = "João"
		sobrenome = "Silva"
		telefone = "011 98765-4321"
		endereco = "Rua setembrochove, 23"
		cidade = "Campinas"		

		limpa()

		// ENVIA DIRETO PARA REALIZAR PEDIDO
		pedido()
	}

	funcao cadastrarUsuario(){ //CADASTRAR NOVO USUÁRIO

		escreva("\nCadastre uma senha: ") leia(senhaCadastro)

		escreva("\nDigite a senha novamente: ") leia(senhaConferida)

		//CONFERE AS SENHAS, SE OK SEGUE PARA CADASTRO
		enquanto(senhaConferida != senhaCadastro)
			{escreva("\nSENHA NÃO CONFERE, TENTE NOVAMENTE: \n")
			leia(senhaConferida)}

		escreva("\nNome: ") leia(nome)
		escreva("Sobrenome: ")leia(sobrenome)
		escreva("Telefone: ") leia(telefone)
		escreva("Endereço: ") leia(endereco)
		escreva("Cidade: ") leia(cidade)
		
		// DIRECIONA PARA REALIZAR PEDIDO
		pedido()
	}

	funcao pedido(){
		
		// LAÇO DE REPETIÇÃO ENQUANTO SELECAO FOR DIFERENTE DE 6 GERA CARDAPIO
		enquanto(selecao != 6){
			
			// CARDAPIO DE SABORES (LAÇO DE REPETIÇÃO ENQUANTO)
			escreva("\n**** 		BEM VINDO A PIZZARIA MORTE LENTA 		********\n\n")
			escreva(	nome,", faça seu pedido!\n\n")			
			escreva("                      CARDÁPIO\n")
			escreva("\n")
			escreva("1 * Mussarela: Mussarela, tomate e orégano R$ 30,90\n")
			escreva("2 * Calabresa: Calabresa fatiada, cebola, azeitona preta R$ 34,90\n")
			escreva("3 * Portuguesa: Presunto, cebola, pimentão, ovos, ervilha e azeitona preta R$ 36,90\n")
			escreva("4 * Quatro queijos: Blend de queijo mussarela, provolone, gorgonzola e parmesão R$ 39,90\n")
			escreva("5 * Pepperoni: Fatias generosas de pepperoni sobre uma camada de muﾃｧarela R$ 38,90\n\n")
			escreva("6 * PARA FINALIZAR PEDIDO.\n")
			leia(selecao)
			
			limpa()

	 		// ESCOLHA - CASO
			escolha(selecao){

			caso 1:
			valor += 30.90
			sabor += " - Mussarela - Valor: R$ 30,90\n"
			pare

			caso 2:
			valor += 34.90
			sabor += " - Calabresa - Valor: R$ 34,90\n"
			pare

			caso 3:
			valor += 36.90
			sabor += " - Portuguesa - Valor: R$ 36,90\n"
			pare

			caso 4:
			valor += 39.90
			sabor += " - Quatro Queijos - Valor: R$ 39,90\n"
			pare

			caso 5:
			valor += 38.90
			sabor += " - Pepperoni - Valor: R$ 38,90\n"
			pare

			caso 6:
			escreva("\nPEDIDO FINALIZADO!\n")
			pare

			caso contrario:
			escreva("\nNÃO ENTENDI, VERIFIQUE O CARDÁPIO!\n\n")
			pare						
			}
		}

		se(valor > 0){
			gerandoRelatorio()
		}
	}

	funcao gerandoRelatorio(){
				
		// Gerando relatÓrio de saÍDa
		limpa()
		escreva("PIZZARIA MORTE LENTA\n")
		escreva("CNPJ: 12.345.678/0001-90\n")
		escreva("\n")
		escreva("Rua das flores, 34 Bairro: Jatobá\n")
		escreva("Cidade: Imundos | Fone: (011) 3344-5566\n")
		escreva("Atendente: Cassio Fran Gueiro\n") 		
		escreva("########################################\n\n")
		escreva("     				  PEDIDO: ",comanda,      "\n\n")// NÚMERO DA COMANDA (INICIANDO EM 1)
		escreva("########################################\n\n")
		escreva("NOME DO CLIENTE: ",nome," ",sobrenome,"\n")
		escreva("TEL CONTATO: ",telefone, "\n")
		escreva("ENDEREÇO: ",endereco, "\n")
		escreva("CIDADE: ",cidade,"\n\n")
		escreva("----------------------------------------\n\n")
		escreva("PRODUTOS:\n\n",sabor)
		escreva("\n----------------------------------------\n\n")
		valor = mat.arredondar(valor,2)
		escreva("SUBTOTAL: R$ ",valor, "\n")//UTILIZEI BIBLIOTECA MATEMÁTICA PARA ARREDONDAR
				
		se(valor > 100.0){
			valorDesconto = valor * 0.10 // Desconto de 10% no pedido acima de R$ 100,00
			valorTotal = valor - valorDesconto	
		}
		se(valorDesconto > 0){
			valorDesconto = mat.arredondar(valorDesconto,2)
			escreva("DESCONTO DE (10%) - R$ ",valorDesconto,"\n")
			valorTotal = mat.arredondar(valorTotal,2)
			escreva("TOTAL COM DESCONTO - R$ ",valorTotal, "\n\n")
		}senao{
			valor = mat.arredondar(valor,2)
			escreva("TOTAL A PAGAR - R$ ",valor,"\n\n")
		}
		
		escreva("-------------------------------------------\n\n")
		escreva("*** Este ticket não é documento fiscal ***\n")
		escreva("Pizzaria Morte Lenta agradece sua preferêｪncia!\n")
	}			
}
 * @POSICAO-CURSOR = 0; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
