# QUANDO PRECISO PASSAR O MOUSE EM CIMA DE ALGUM ELEMENTO


Quando('seleciono o mouse hover') do
    visit '/iteracoes/mousehover'
    find('.activator').hover
    #mover e clicar
    find('.activator').hover.click
    sleep(5)
end
  