class AjaxPage < SitePrism::Page
    set_url '/buscaelementos/botoes'
    element :botao, '#teste'
    element :mensagem, '#div1'

    def clicar_botao
        wait_for_botao
        #wait_until_botao_visible
        #wait_until_botao_invisible
        #has_botao
        #has_no_botao
        botao.click
    end
end