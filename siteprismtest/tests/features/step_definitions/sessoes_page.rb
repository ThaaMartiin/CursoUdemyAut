Quando("clico no elemento da sessao") do
   @pagina = Pagina.new
   @pagina.load
   @pagina.navbar.medium.click
end