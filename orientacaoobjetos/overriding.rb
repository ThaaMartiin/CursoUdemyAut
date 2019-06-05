#sobrescrever um metodo da classe mae

class ClasseMae
    def correr
        puts 'a mãe corre'
    end
end

class ClasseFilha < ClasseMae
    def correr
        puts 'a filha corre'
    end
end

mae = ClasseMae.new
filha = ClasseFilha.new

mae.correr
filha.correr 