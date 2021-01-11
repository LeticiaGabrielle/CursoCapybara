Quando('eu faco um cadastro') do
    
    visit '/users/new'

    #buscando campo pelo id e preenchendo com '...'
    fill_in(id: 'user_name', with: 'leticia')

    #encontra o elemento mapeado e seta ele com o nome 'gabrielle'
    #como esta usando CSS precisa colocar o # na frente do id
    find('#user_lastname').set('gabrielle')

    #encontra o elemento e coloca como chave '...'
    find('#user_email').send_keys('llgabrielle@icloud.com')

    fill_in(id: 'user_address', with: 'av americo figueiredo')
    fill_in(id: 'user_university', with: 'unip')
    fill_in(id: 'user_profile', with: 'QA')
    fill_in(id: 'user_gender', with: 'FEMININO')
    fill_in(id: 'user_age', with: '20')

    #clicando no botão que n tem id - usando css selector
    find('input[value="Criar"').click
end
  
Entao('verifico se fui cadastrado') do

    #criando uma variavel 'texto' que vai receber o texto notice e depois 
    #irei validar se o texto esta correto
    texto = find('#notice')
    expect(texto.text).to eql 'Usuário Criado com sucesso'

end