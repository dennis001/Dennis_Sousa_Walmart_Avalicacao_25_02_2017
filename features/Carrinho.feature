#language: pt
#utf-8

Funcionalidade: Carrinho
	Eu como cliente
	Quero procurar produto
	Para adicionar ao carrinho

Cenario: Adicionar produtos ao carrinho
	Dado que esteja na home do Walmart
	Quando pesquisar o produto
	Então verificar se está na pagina do produto
	E validar o produto no carrinho