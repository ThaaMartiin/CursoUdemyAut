Dado("que eu estou na tela de drag and drop") do
    visit '/iteracoes/draganddrop'
end
  
Quando("eu movo o drag and drop") do
    primeiroelemento = find('#winston')
    segundoelemento = find ('#dropzone')
    primeiroelemento.drag_to(segundoelemento)
end