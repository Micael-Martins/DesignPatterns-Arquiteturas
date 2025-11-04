import Foundation

@MainActor
class SessaoUsuario {
    static let shared = SessaoUsuario()
    
    private init() {}
    
    var username: String?
    
    func login(user: String){
        self.username = user
        print("Logado como: \(user)")
    }
    
    func logout() {
        if let user = username {
            print("Deslogando o \(user)")
        }
        username = nil
    }
}

let Usuario = SessaoUsuario.shared

Usuario.login(user: "João")


print(SessaoUsuario.shared.username)
