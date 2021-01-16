#IFRAME É UMA TELA DENTRO DE OUTRA TELA

Quando('entro no iframe e preencho os campos') do
visit '/mudancadefoco/iframe'

    #Precisa mudar o foco para dentro dessa tela antes de preencher
  within_frame('id_do_iframe') do
    #dentro desse metodo iremos fazer as ações dentro do iframe
    fill_in(id:'first_name', with:'leticia')
    fill_in(id:'last_name', with:'gabrielle')
    sleep(5)
  end
end
  
Quando('entro no modal e verifico o texto') do
  visit '/mudancadefoco/modal'
  find('a[href="#modal1"]').click
  
  within('#modal1')do
  texto = find('h4')
  expect(texto.text).to eql 'Modal Teste'
  find('.modal-close').click
  end
end
