
import Foundation

@MainActor
class central {
    static let shared = central()
    
    private init() {}
    
    func enviarMensagem(pessoa: String) {
        print("A mensagem de \(pessoa) está sendo enviada")
    }
}

class pessoa {
    let name: String
    
        init(name: String) {
            self.name = name
    }
    
    @MainActor func envio() {
        central.shared.enviarMensagem(pessoa:name)
    }
}

let jao = pessoa(name: "joao")
let pedro = pessoa(name: "Pedro")

jao.envio()
pedro.envio()


