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
  new_window = window_opened_by (click_link"login-link topbar-buttons button-link topbar-login-js")
  within_window new_window do
  page.driver.browser.switch_to.window(page.driver.browser.window_handles.last)
  fill_in "signinField", :with => "dennisdesousa.ds@gmail.com"
  	end
end

Quando(/^os dados de login já tenham sido preenchidos$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Entao(/^conclua a compra selecionando os dados de entrega$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Entao(/^gere o boleto$/) do
  pending # Write code here that turns the phrase above into concrete actions
end                                                        