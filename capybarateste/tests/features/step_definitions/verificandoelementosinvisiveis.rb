Quando("clico em um botão") do
    visit '/buscaelementos/botoes'
    find('a[id="teste"]').click
  end
  
  Então("verifico se o texto desapareceu na tela com sucesso") do
        #verificando se o texto está presente na tela de 3 formas diferentes
        page.assert_text(text, 'Você Clicou no Botão!')
        page.has_text?('Você Clicou no Botão!')
        have_text('Você Clicou no Botão!')

        #fazendo o texto sumir da tela
        find('a[id="teste"]').click

        #verificando se o texto desapareceu
        assert_no_text(text, 'Você Clicou no Botão!')
        has_no_text('Você Clicou no Botão!')
end
  