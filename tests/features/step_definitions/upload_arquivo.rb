
Quando('eu faco um upload de arquivo') do
visit '/outros/uploaddearquivos'
#procurar um tipo - type=file e copiar o id
#depois copiar a imagem e colocar na pasta do diretorio e passar o caminho completo
attach_file('upload','C:\Users\Leticia Gabrielle\Desktop\ESTUDOS\CursoCapybara\tests\features\wallpaperdasa.png', make_visible: true)
sleep(5)
end