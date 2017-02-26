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
  pending # Write code here that turns the phrase above into concrete actions
end