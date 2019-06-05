# nome da classe começa com letra maiuscula
# uma classe é composta por atributos, metodos e contrutores
class ClassName

#só permite ler
    #attr_reader :nomeone

#só permite escrever
   #attr_writer :nomedois

   #get e set do java
   attr_accessor :nome 


#metodo 
#tem que ser tudo minusculo e caso composto, tem _
   def metodo
    #corpo do metodo
    puts 'corpo do metodo'       
   end

   def metodo_composto
     puts 'corpo do metodo composto' 
   end
end

#realizando herança
class Heranca < ClassName
    
end

objeto = ClassName.new
objeto.nome = 'thais'
puts objeto.nome

objeto.metodo
objeto.metodo_composto

#utilizando a heranca da classe principal
objeto_herdado = Heranca.new
objeto_herdado.metodo

