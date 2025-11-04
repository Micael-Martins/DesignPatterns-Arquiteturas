//  Definimos a interface principal que será usada pelo sistema moderno (Cartão)
protocol CartaoEletrico {
    func inserirCartao()
}
//  Implementamos o comportamento legado do carro antigo (chave física)
class ChaveAntiga {
    func IgnicaoAntiga(){
        print("A chave foi virada, ligando os motores.")
    }
}
//  Criamos o adaptador que traduz comandos do Cartão para o carro antigo
class AdaptadorCartaoChave: CartaoEletrico{
    private let Chave: ChaveAntiga
    
    init(_ Chave: ChaveAntiga) {
        self.Chave = Chave
    }
    
    func inserirCartao() {
        Chave.IgnicaoAntiga()
        print("O cartão foi lido e adaptado para uma ação de chave física.")
    }
}
//  Implementamos o funcionamento do Cartão moderno
class ChaveNova {
    func ligarCarro(chave: CartaoEletrico){
        chave.inserirCartao()
        print("O carro está ligado")
    }
}
//  Executamos a lógica de ligar o carro antigo usando o Cartão via adaptador
let minhaChave = ChaveAntiga()
let meuCartao = AdaptadorCartaoChave(minhaChave)
let Cartao = ChaveNova()

Cartao.ligarCarro(chave: meuCartao)
