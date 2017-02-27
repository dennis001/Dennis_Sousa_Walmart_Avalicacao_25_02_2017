Dado(/^que esteja na home do Walmart$/) do
  visit "http://www.walmart.com.br"
  
end

Quando(/^pesquisar o produto$/) do
  fill_in "suggestion-search", :with => "fralda pampers supreme care g meninas"
  click_button("Procurar")
end

Então(/^verificar se está na pagina do produto$/) do
  assert_text("Fralda Huggies Turma Monica Supreme Care Meninas Tam G - 32 Unidades")
  click_on("Fralda Huggies Turma Monica Supreme Care Meninas Tam G - 32 Unidades", match: :first)
  click_button("Adicionar ao carrinho")
end

Então(/^validar o produto no carrinho$/) do
  click_link("Meu carrinho")
  assert_text("Fralda Huggies Turma Monica Supreme Care Meninas Tam G - 32 Unidades - G - Huggies
Vendido e entregue por Walmart")
end

Dado(/^que o produto já esta no carrinho de compras$/) do
  click_button("Finalizar compra", match: :first)
  login_window = page.driver.find_window('iframeLogin')
  	main_window = page.driver.find_window('')
  #visit "https://www2.walmart.com.br/login?modal=true&continue=https://connect.walmart.com.br/connect/authorize?response_type=code&client_id=walmart_checkout&redirect_uri=https://www2.walmart.com.br/checkout/services/transaction/oauth/callback/walmart_checkout"
  #new_window = window_opened_by {click_link'https://www2.walmart.com.br/login?modal=true&continue=https://connect.walmart.com.br/connect/authorize?response_type=code&client_id=walmart_checkout&redirect_uri=https://www2.walmart.com.br/checkout/services/transaction/oauth/callback/walmart_checkout'}
	#within_window new_window do
  #assert_text("Já tem cadastro?")
 	page.within_window(login_window) do
 	
	  	fill_in "signinField", :with => "dennisdesousa.ds@gmail.com"
  		fill_in "password", :with => "D.632256"
  		click_button("Entrar")
 	#visit "https://www2.walmart.com.br/checkout/content/#chooseAddress"
 end
end

Quando(/^os dados de login já tenham sido preenchidos$/) do
  click_button("Entregar nesse endereço")
  click_button("Continuar", match: :first)
end

Entao(/^conclua a compra selecionando os dados de entrega$/) do
  click_link("Boleto bancário")
  click_button("Finalizar compra")
end

Entao(/^gere o boleto$/) do
  #assert_text # Write code here that turns the phrase above into concrete actions
end                                                        