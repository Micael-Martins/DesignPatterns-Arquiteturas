// primeiro o mago deve saber o que fazer
protocol mago {
    func pocao()
}

// Depois, temos que criar os tipos de poções que o mago pode criar

class Fogo: mago {
    func pocao() {
        print("Voalá, labaredas escaldantes 🔥")
    }
}

class Agua: mago {
    func pocao() {
        print ("Aquatissézimo, forme-se água 💧")
    }
}

class Raio: mago {
    func pocao() {
        print("Relampeie, relampagueije ó relâmpago! ⚡️")
    }
}

class Terra: mago {
    func pocao() {
        print("Forças do chão, óia a pedra! 🪨")
    }
}


// Criamos a lógica do caldeirão, que é onde as poções serão criadas. Lembrando que aqui a poção é criada e depois processada.

class Caldeirao {
    func criarPocao() -> mago {
        fatalError("Ish, você tentou criar uma poção de void... que perigoso")
    }
    
    func processarPocao() {
        let pocao = criarPocao()
        print("Sua poção está sendo produzida")
        pocao.pocao()
    }
}

// Aqui fica de fato o caldeirão onde nós deixaremos claro qual poção o mago deve criar

class Quente: Caldeirao {
    override func criarPocao() -> mago {
        return Fogo()
    }
}

class Molhado: Caldeirao {
    override func criarPocao() -> mago {
        return Agua()
    }
}

class Energizado: Caldeirao {
    override func criarPocao() -> mago {
        return Raio()
    }
}

class Terroso: Caldeirao {
    override func criarPocao() -> mago {
        return Terra()
    }
}

// E por fim, pedimos as poções para o mago.

//let vermelho = Quente()
//let humido = Molhado()
//let eletrico = Energizado()
//let sujo = Terroso()

Quente().processarPocao()
Molhado().processarPocao()
Energizado().processarPocao()
Terroso().processarPocao()


