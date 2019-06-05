class Cachorro
   def latir
        puts 'latindo'        
    end
end

class CachorroGrande
    def latir
        puts 'latido alto'
    end
end

class Pessoa
    def agarra_cachorro(cachorro)
        cachorro.latir
    end
end

c1 = Cachorro.new
c2 = CachorroGrande.new
p = Pessoa.new

p.agarra_cachorro(c1)
p.agarra_cachorro(c2)