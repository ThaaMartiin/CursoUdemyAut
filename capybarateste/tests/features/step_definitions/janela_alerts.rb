Quando("eu entro na janela e verifico a mensagem") do                         
     visit '/mudancadefoco/janela'
#primeira opção
    #janela recebe uma janela que foi aberta pelo link
     janela = window_opened_by do 
        click_link 'Clique aqui'
     end

    #muda de foco para a janela que foi aberta
     within_window janela do
    #compara a url atual com a passada
        expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
    #encontra a mensagem na pagina que foi aberta  
        @mensagem = find('.red-text.text-darken-1.center')
    #verifica o texto
        expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'
    #fechando a janela
        janela.close
     end

#segunda opção  
    click_link 'Clique aqui'
    #muda da aba que você para a ultima 
    switch_to_window windows.last
    expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
    @mensagem = find('.red-text.text-darken-1.center')
    expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'
    janela.close    
end                                                                           
                                                                                
  Quando("eu entro no alert e verifico faço a ação") do                         
    visit '/mudancadefoco/alert'

    find('button=[onclick="jsAlert()"]').click
    page.accept_alert

    find('button=[onclick="jsConfirm()"]').click
    page.dismiss_confirm

    find('button=[onclick="jsPrompt()"]').click
    page.accept_prompt(with: 'Thais')

  end                                                                           
                                                                                