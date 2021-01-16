Quando('eu uso um script') do

visit '/outros/scroll'

#---- AQUI EU USO PARA DESCER A TELA - SCROLL
page.execute_script("window.scrollBy(0,1500)")
sleep(5)

#executando alguma ação que recebe um resultado e imprime esse resultado na tela
@result = page.evaluate_script('4 + 4');
puts @result

end