Dado("que eu tenho {int} laranjas na bolsa") do |valor1|                         
     @laranjas = valor1
  end                                                                           
                                                                                
  Quando("eu coloco {int} laranjas na bolsa") do |valor2|                          
    @coloquei = valor2
    @resultadosom = @laranjas + @coloquei
  end                                                                           
                                                                                
  Então("eu verifico se o total de laranjas é igual a {int}") do |valor3|          
    expect(@resultadosom).to eq valor3
  end                                                                           
                                                                                
  Quando("eu tiro {int} laranjas da bolsa") do |valor4|                            
     @tirei = valor4
    @resultadosub = @laranjas - @tirei
  end  

  Então("eu verifico quantas laranjas sobraram") do                            
    expect(@resultadosub).to eq 8
  end                                                                          