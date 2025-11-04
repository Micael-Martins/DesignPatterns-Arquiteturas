protocol cadeira {
    func sentar()
}

protocol sofa {
    func deitar()
}

protocol mesa {
    func apoiar()
}

protocol mobilia {
    func criarCadeira() -> cadeira
    func criarSofa() -> sofa
    func criarMesa() -> mesa
}
class ArtDeco: mobilia {
    func criarCadeira() -> cadeira {
        return cadeira1()
    }
    func criarSofa() -> sofa {
        return sofa1()
    }
    func criarMesa() -> mesa {
        return mesa1()
    }
}

class Vitoriano: mobilia {
    func criarCadeira() -> cadeira {
        return cadeira2()
    }
    func criarSofa() -> sofa {
        return sofa2()
    }
    func criarMesa() -> mesa {
        return mesa2()
    }
}

class Moderno: mobilia {
    func criarCadeira() -> cadeira {
        return cadeira3()
    }
    func criarSofa() -> sofa {
        return sofa3()
    }
    func criarMesa() -> mesa {
        return mesa3()
    }
}

class cadeira1: cadeira {
    func sentar() {
        print("Sentado numa cadeira ArtDeco")
    }
}

class sofa1: sofa {
    func deitar(){
        print("Deitado num sofá ArtDeco")
    }
}

class mesa1: mesa {
    func apoiar() {
        print("Estou me apoiando numa mesa ArtDeco")
    }
}

class cadeira2: cadeira {
    func sentar() {
        print("Sentado numa cadeira vitoriana")
    }
}

class sofa2: sofa {
    func deitar(){
        print("Deitado num sofá vitoriano")
    }
}

class mesa2: mesa {
    func apoiar() {
        print("Estou me apoiando numa mesa vitoriana")
    }
}

class cadeira3: cadeira {
    func sentar() {
        print("Sentado numa cadeira moderna")
    }
}

class sofa3: sofa {
    func deitar(){
        print("Deitado num sofá moderno")
    }
}

class mesa3: mesa {
    func apoiar() {
        print("Estou me apoiando numa mesa moderna")
    }
}

let fabrica = ArtDeco()
let cadeiraArtDeco = fabrica.criarCadeira()

cadeiraArtDeco.sentar()

