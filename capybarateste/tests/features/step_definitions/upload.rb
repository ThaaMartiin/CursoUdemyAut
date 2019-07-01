Quando("eu faço um upload de arquivo") do
    visit '/outros/uploaddearquivos'
#modo 1
    #encontrar no html um input do tipo file
    #passa o elemento, o arquivo e a opção
    attach_file('upload', 'C:\Users\thaam\Desktop\CursoUdemyAut\capybarateste\tests\features\download.jpg', make_visible: true)

#modo2
    @foto = File.join(Dir.pwd, 'feature\download.jpg')
    attach_file('upload', @foto, make_visible: true)

    sleep(5)
end