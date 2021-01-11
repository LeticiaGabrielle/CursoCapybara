Quando('clico em botoes') do
    
  visit '/'

  #click_on - para clicar em algum link ou botao que tenha o texto 'teste'
  #click_link_or_button - são a mesma coisa
  click_on('Começar Automação Web')
  
  #entrando no link, buscando o botao com a classe e clicando
  visit '/buscaelementos/botoes'
  click_button(class:'btn waves-light')

  #find().click - procurando o elemento e clicando - buscando pelo css
  #usando o "a[]" na frente pq é um link
  find('a[onclick="ativaedesativa2()"]').click

  #find().double_click - clica duas vezes 
  find('a[onclick="ativaedesativa2()"]').double_click

  #find().right_click - clica com o botao direito
  find('a[onclick="ativaedesativa3()"]').right_click
  
  #clicar em um link que tenha determinado texto
  visit '/'
  click_link('Github')
  
end