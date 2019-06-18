Quando("seleciono o mouse hover") do
    visit '/iteracoes/mousehover'
    #procurando a classe activator e usando o mousehover
    find('.activator').hover
    sleep(5)
    have_text('Você usou o mouse hover!')


    #procurando a classe activator, usando o mousehover e clicar
    #find('.activator').hover.click
    
end