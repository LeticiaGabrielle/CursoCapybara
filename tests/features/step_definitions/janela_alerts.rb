Quando('eu entro na janela e verifico a mensagem') do
visit '/mudancadefoco/janela'

#essa janela esta recebendo uma janela que sera aberta por um link
    janela = window_opened_by do 
    click_link 'Clique aqui'
    end

    #mudando o foco para a aba aberta
    within_window janela do 
        expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'

        #esse css tinha espaços e eu coloquei ponto no lugar do espaço pra rodar
        @mensagem = find('.red-text.text-darken-1.center')
        expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'
        
        #fechando a janela
        janela.close

# tem mais uma opção que chama windows.last - assistir a aula 37 do curso
    end
sleep(3)
end
  
Quando('eu entro no alert e Verifico faço a acao') do

    #-------------> CONFIRMANDO UM ALERT
visit '/mudancadefoco/alert'
find('button[onclick="jsAlert()"]').click
#não consigo clicar nesse alert, então preciso confirmar com o page.accept
page.accept_alert

    #--------------------> CANCELANDO UM ALERT
find('button[onclick="jsConfirm()"]').click
sleep(2)
page.dismiss_confirm

    # ------------------> PROMPT PARA PREENCHER NO ALERT
find('button[onclick="jsPrompt()"]').click
page.accept_prompt(with:'leticia gabrielle')
sleep(5)
end
  