Quando('acesso a url') do
    #aqui para acessar a url eu posso colocar a url inteira novamente ou somente
    #o endereço que eu quero acessar, pq meu caminho (url padrao) ja está na pasta env.rb
    visit '/treinamento/home'
  end
  
  Entao('eu verifico se estou na pagina correta') do
    #validar se estou na pagina correta - valida a url
    expect(page).to have_current_path('https://automacaocombatista.herokuapp.com/treinamento/home', url:true)
    sleep(5)
  end