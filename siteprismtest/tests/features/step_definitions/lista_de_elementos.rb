Quando("mapeio uma tabela.") do
  @lista = MapeandoListas.new
  @lista.load

  puts @lista.lista.size
  puts @lista.lista[0].text

  expect(@lista.lista.size).to eql 24

  @lista.lista.each do |listas|
    puts listas.text
  end

end