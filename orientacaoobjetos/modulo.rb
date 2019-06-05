#serve para agrupar classes, constantes e metodos.
#muito parecido com classe porém não pode ser instanciado
#modulo não pode ser herdado
module ModuloNome  
    def metodo_padrao
        puts 'eu sou um modulo'
    
    end
end

class ClasseNome
    include ModuloNome
end

objeto = ClasseNome.new
objeto.metodo_padrao
