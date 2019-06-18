Quando("entro no iframe e preencho os campos") do
   visit '/mudancadefoco/iframe'
   #mudando o foco pro iframe 
   within_frame("id_do_iframe") do
      #ações dentro do iframe
      fill_in(id: 'first_name', with: "thaís")
      fill_in(id: 'last_name', with: "martin")
   end 
end
  
Quando("entro no modal e verifico o texto") do
   visit '/mudancadefoco/modal'
    find('a[href="#modal1"]').click
    #mudando de foco para o modal selecionando o id
    within("#modal1") do
      texto = find('h4')
      expect(texto.text).to eql "Modal Teste"

      #fechando o modal
      find('modal-close').click
    end


end
  
