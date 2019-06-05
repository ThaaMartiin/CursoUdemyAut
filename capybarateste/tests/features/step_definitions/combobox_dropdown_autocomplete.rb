Quando("interajo com dropdown e select") do
    visit '/buscaelementos/dropdowneselect'

    #para clicar em uma seleção do dropdown vc precisa primeiro
    #clicar no dropdown e depois clicar na opção que deseja selecionar
    find('.btn.dropdown-button').click
    find('a[onclick="ativaedesativadrop1()"]').click

    #vai selecionar a opção do dropdown informado
    #dropdown é o id
    select 'Chrome', from: 'dropdown'
    #outra maneira de selecionar uma opção
    find('option[value="2"]').select_option

    sleep(4)
end
  
Quando("preencho o autocomplete") do
    visit '/widgets/autocomplete'

    find("#autocomplete-input").set 'Rio de Ja'
    find('ul', text: 'Rio de Janeiro').click
    sleep(4)
end