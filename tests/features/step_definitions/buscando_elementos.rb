Quando('acesso a url de botoes') do
    visit '/buscaelementos/botoes'
end
  
Entao('verifico se encontrei os elementos') do

    #all busca todos os elementos que conteham o all por toda pag
    #para identificar uma classe tem q colocar um ponto antes exp: .btn
    #não precisa digitar o :css
    page.all(:css, '.btn')

    #busca um elemento mapeado - find (não é mto certeiro...)
    find('#teste')

    #busca pelo id
    find_by_id('teste')

    #busca por um botão - especificando uma classe mapeada (colocar a classe)
    #esse class é uma das opçoes, tem por css, id, classe
    find_button(class: 'btn waves-light')

    #busca pelo primeiro elemento que esta mapeado na tela -href geralmete é link
    first('.btn')
    #busca por algum link
    find_link(href:'https://www.youtube.com/channel/UCp554v_is_ZzjzSmAQyFfAA')

    
end
      
