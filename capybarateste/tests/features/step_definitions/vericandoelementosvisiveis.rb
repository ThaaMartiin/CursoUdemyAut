Quando("clico no botão") do
    visit '/buscaelementos/botoes'
    find('a[id="teste"]').click
  end
  
  Então("verifico se o texto apareceu na tela com sucesso") do
    #verificando se o texto está presente na tela de 3 formas diferentes
    page.assert_text(text, 'Você Clicou no Botão!')
    page.has_text?('Você Clicou no Botão!')
    have_text('Você Clicou no Botão!')
  end