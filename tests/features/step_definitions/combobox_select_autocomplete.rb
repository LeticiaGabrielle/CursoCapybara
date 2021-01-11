Quando('Interajo com o dropdown e select') do
 
    visit '/buscaelementos/dropdowneselect'

    #DROPDOWN
    #primeiro tem que clicar nele, depois clicar novamente na opção
    #colocando o . antes pq é uma classe
    find('.btn.dropdown-button').click

    #selecionando dentro do dropdown
    #como é um id usamos # antes
    find('#dropdown3').click


    #SELECT
    #passar o texto da opcao que queremos
    select 'Chrome', from: 'dropdown'
    
    #find().select_option - clica direto na opção mapeada pelo valor do select
    find('option[value="2"]').select_option
    
end

Quando('Preencho o autocomplete') do

    #AUTOCOMPLETE
    #Preencher o campo e depois clicar na opção

    visit '/widgets/autocomplete'
    find('#autocomplete-input').set 'Rio de Janeiro'
    find('ul', text: 'Rio de Janeiro').click
    sleep(5)


end