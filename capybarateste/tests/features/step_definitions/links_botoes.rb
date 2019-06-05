Quando("clico em botoes") do
    #acessar a url padrão do env.rb
    visit '/'
    
    #click_on = click_link_or_button
    #clicar em algum link ou botão que contenha o texto
    click_on('Começar Automação Web')

    visit 'buscaelementos/botoes'
    #clicar em algum botão que contenha a classe
    click_button(class: 'btn waves-light')

    #busca o elemento e depois clica
    find('a[onclick="ativaedesativa2()"]').click

    #busca o elemento e depois clica duas vezes
    find('a[onclick="ativaedesativa2()"]').double_click

    #busca o elemento e depois clica com o botao direito
    find('a[onclick="ativaedesativa3()"]').right_click

    visit '/'
    click_link('Github')
    sleep(5)
end