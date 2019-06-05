Quando("eu marco um checkbox e um radiobox") do
    visit '/buscaelementos/radioecheckbox'

    #selecionando checkbox de formas diferentes
    find('label[for="white"]').click

    #quando a ação está no input
    check('purple', allow_label_click: true)
    sleep(4)
    uncheck('purple', allow_label_click: true)

    #selecionando radiobox
    choose('red', allow_label_click: true)
    sleep(4)
end