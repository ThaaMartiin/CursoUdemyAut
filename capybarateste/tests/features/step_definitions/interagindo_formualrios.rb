Quando("eu faco cadastro") do                                                
    visit '/users/new'

    #preencher o campo nome com Thaís
    fill_in(id: 'user_name', with: 'Thais')

    #com o find estamos usando o css e então é necessario colocar #
    find('#user_lastname').set('Martin')
    
    #send keys
    find('#user_email').send_keys('thais@thais.com')

    fill_in(id: 'user_address', with: 'Rua 1')
    fill_in(id: 'user_university', with: 'Fatec')
    fill_in(id: 'user_profile', with: 'Analista')
    fill_in(id: 'user_gender', with: 'F')
    fill_in(id: 'user_age', with: '27')

    find('input[value="Criar"]').click
    sleep(5)
end                                                                          
                                                                               
Então("verifico se fui cadastrado") do                                       
    texto = find('#notice')
    expect(texto.text).to eql 'Usuário Criado com sucesso'
end                                                                          
                                                                               