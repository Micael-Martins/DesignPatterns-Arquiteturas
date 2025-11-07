protocol Pokemon3Gen {
    var nome: String {get}
    var tipo: String {get}
    var habilidade: String {get set}
}

extension Pokemon3Gen {
    var tipo2: String {""}
}

class Pokemon2Gen {
    var name: String
    var tipo: String
    
    init(_ name: String, _ tipo: String) {
        self.name = name
        self.tipo = tipo
    }
}

class PokemonAdapterSingleType: Pokemon3Gen {
    var Pokemon2Gen: Pokemon2Gen
    
    init(_ Pokemon: Pokemon2Gen, habilidade: String) {
        Pokemon2Gen = Pokemon
        self.habilidade = habilidade
    }
    
    var nome: String {Pokemon2Gen.name}
    var tipo: String {Pokemon2Gen.tipo}
    var habilidade: String
}

class Pokemon2GenMultiType {
    var name: String
    var tipo: String
    var tipo2: String
    
    init(_ name: String, _ tipo: String, _ tipo2: String) {
        self.name = name
        self.tipo = tipo
        self.tipo2 = tipo2
    }
}

class PokemonAdapterMultiType: Pokemon3Gen {
    var Pokemon2Gen: Pokemon2GenMultiType
    
    init(_ Pokemon: Pokemon2GenMultiType, habilidade: String) {
        Pokemon2Gen = Pokemon
        self.habilidade = habilidade
        
    }
    
    var nome: String {Pokemon2Gen.name}
    var tipo: String {Pokemon2Gen.tipo}
    var tipo2: String {Pokemon2Gen.tipo2}
    var habilidade: String
}

var Gen2 = Pokemon2Gen("Charmander","Fogo")
var Gen2ToGen3 = PokemonAdapterSingleType(Gen2, habilidade: "blaze")

print(Gen2ToGen3.nome, Gen2ToGen3.tipo, Gen2ToGen3.habilidade)


// Código feito apenas para entender alguns conceitos de Adapter
