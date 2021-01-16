#DICA
#SITE MEDIUM - TRABALHANDO COM VERIFICAÇÕES E ESPERAS DE ELEMENTOS
#COM O CAPYBARA, SITEPRISM E RSPEC - PROF BRUNO
#PARA TIRAR DUVIDAS --------------

#não funcionou

Quando('clico em um botao') do
    visit '/buscaelementos/botoes'
    find('#teste').click
end
  
Entao('verifico se o texto desapareceu na tela com sucesso') do

    #visualizando se textos estao na tela
    page.assert_text(text, 'Você Clicou no Botão!')
    page.has_text?('Você Clicou no Botão!')
    have_text('Você Clicou no Botão!')

    #CONTEXTO: CLICAR NO E VISUALIZAR SE O TEXTO ESTA NA TELA, E DEPOIS VISUALIZAR SE ELE SUMIU DA TELA
    find('#teste').click

    sleep(3)
    assert_no_text(text, 'Você Clicou no Botão!')
    has_no_text?('Você Clicou no Botão!')
    sleep(3)
end
  
