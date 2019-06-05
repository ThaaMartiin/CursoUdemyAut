Quando("eu acesso a url de botoes") do
    visit ('buscaelementos/botoes')
end
  
Então("verifico se encontrei os elementos") do
    # all: busca todos os elemento que contenham o all (não é necessario colocar :css)
    page.all(:css, '.btn')

    # busca um elemento mapeado (# é para disse que é um id)
    find('#teste')
    find_by_id('teste')

    #buscando botao que tem uma classe especifica
    find_button(class: 'btn waves-light')

    # buscar o primeiro elemento que contenha essa classe btn
    first('.btn')

    #busca por algum link
    find_link(href: 'https://www.youtube.com/channel/UCp554v_is_ZzjzSmAQyFfAA')
end