Quando('eu marco um radiobox e checkbox') do

    #CHECKBOX
    visit '/buscaelementos/radioecheckbox'
    find('label[for="white"]').click

    #CHECKBOX com uma label clicavel (mesma coisa, outra forma de escrever)
    check('purple', allow_label_click: true)
    sleep(2)

    #DESMARCAR CHECKBOX 
    uncheck('purple', allow_label_click: true)
    sleep(2)

    #RADIOBOX
    choose('red', allow_label_click: true)
    sleep(2)
end