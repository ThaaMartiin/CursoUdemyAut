#invocar o metodo correspondente da classe pai

class ClasseMae
    def correr
        puts 'a mãe corre'
    end
end

class ClasseFilha < ClasseMae
    def correr
        puts super
        puts 'cancei'
    end
end


filha = ClasseFilha.new
filha.correr