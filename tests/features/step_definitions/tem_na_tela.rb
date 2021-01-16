#DICA
#SITE MEDIUM - TRABALHANDO COM VERIFICAÇÕES E ESPERAS DE ELEMENTOS
#COM O CAPYBARA, SITEPRISM E RSPEC - PROF BRUNO
#PARA TIRAR DUVIDAS --------------


Quando('clico no botao') do
    visit '/buscaelementos/botoes'
   # (procurando botao com id # e clicando)
    find('#teste').click
end
  
Entao('verifico se o texto apareceu na tela com sucesso') do

    #-------> EXPECT TO EQL
=begin
#pegando o id do texto exibido na tela e criando a verificacao
    @texto = find('#div1')
    expect(@texto.text).to eql 'Você Clicou no Botão!'
    sleep(5)
=end

    #-------> ASSERT TEXT USANDO HAS

#pegando o id do texto exibido na tela e criando a verificacao usando HAS
    page.assert_text(text, 'Você Clicou no Botão!')
    page.has_text?('Você Clicou no Botão!')

    #USANDO HAVE
    have_text('Você Clicou no Botão!')
end
  
