Quando('realizo ações com o teclado') do
visit 'users/new'

# --- USANDO COMANDOS DO TECLADO AUTOMATICAMENTE COM O SEND KEYS - OLHAR CHAVES NA AULA 40 
find('#user_name').send_keys(:page_down)
sleep(4)
end