class Sanduiche {
    var pao: String = ""
    var recheio: String = ""
    
    func comentar (){
        print("Fiz meu sanduiche e seu pão é \(pao) e o seu recheio é \(recheio)")
    }
}

class SanduicheBuilder {
    var meuSanduiche = Sanduiche()
    
    func adicionarPao(_ tipo: String) -> SanduicheBuilder {
        meuSanduiche.pao = tipo
        
        return self
    }
    
    func adicionarRecheio(_ recheio: String) -> SanduicheBuilder {
        meuSanduiche.recheio = recheio
        
        return self
    }
    // Depois de retornar self nestas duas funções, o que esta feito basicamente é:
    // Somente dentro do builder: sanduiche().pao(tipo).recheio(recheio).
    // Agora precisamos de um construtor que retorne o sanduiche inteiro.
    func entregarSanduiche() -> Sanduiche {
        return meuSanduiche // meuSanduiche é visto como um retorno possível de um sanduiche e agora retorna com todas as suas características ganhadas no código.
    }
}

var montar = SanduicheBuilder()
var meuSanduiche = montar.adicionarPao("integral").adicionarRecheio("banana").entregarSanduiche()

meuSanduiche.comentar()



