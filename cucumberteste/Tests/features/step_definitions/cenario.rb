Dado("eu tenho {int} laranjas") do |valor1|                                     
   @laranjas = valor1 
end                                                                          
                                                                               
Quando("eu como {int} laranjas") do |valor2|                                    
    @como = valor2
    @sobra = @laranjas - @como
end                                                                          
                                                                               
Então("eu vejo quantas laranjas sobraram.") do                               
    expect(@sobra).to eq 8
    puts @sobra
end                                                                          

Quando("eu compro {int} laranjas") do |valor3|
   @compro = valor3
   @soma = @laranjas + @compro
end

Então("eu vejo quantas laranjas eu tenho.") do
    expect(@soma).to eq 15
    puts @soma
end