Quando("acesso a url") do
    #visit entra numa pagina especifica 
    #visit 'https://automacaocombatista.herokuapp.com/treinamento/home' q é a pagina inteira 
    #ou usando só a extensão quando já estiver configurado no arquivo env.rb
    #visit '/treinamento/home'

    visit('/treinamento/home')
end
  
Então("eu verifico se estou na pagina correta") do
    #verificar se está realmente na url correta
    expect(page).to have_current_path('https://automacaocombatista.herokuapp.com/treinamento/home', url: true)
end