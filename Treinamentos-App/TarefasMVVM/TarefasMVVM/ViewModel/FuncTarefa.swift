//
//  FuncTarefa.swift
//  TarefasMVVM
//
//  Created by Micael Martins de Moura on 05/11/25.
//

import Foundation
import Combine
import SwiftUI

class FuncTarefa: ObservableObject {
    // A linha abaixo indica duas coisas: A primeira delas é que a variavel tarefas é observavel, se mudanças ocorrerem aqui, elas serão refletidas em uma futura view. A segunda é que a váriavel tarefas é do tipo Tarefas, que por sua vez estará dentro de um Array.
   @Published private(set) var tarefas: [Tarefa] = []
    
    func adicionarTarefa(titulo: String) {
        guard !titulo.trimmingCharacters(in: .whitespaces) .isEmpty else { return } // Se titulo estiver vazio, desconsiderando espaços, abortar
        let nova = Tarefa(nome: titulo) // Atribuo a variavel tarefa a Struct Tarefa já com o titulo que o usuário escolher
        tarefas.append(nova) //Adiciono ao array a nova tarefa
    }
    
    func alternarConclusao(_ tarefa: Tarefa){
        guard let i = tarefas.firstIndex(of: tarefa) else {return} // Aqui, o guard verifica se a tarefa está presente dentro de um array e busca o seu index. Se ele não for encontrado, abortar
        tarefas[i].concluida.toggle()
    }
    
    func removerTarefa(_ offsets: IndexSet){
        tarefas.remove(atOffsets: offsets) //Uma tarefa será removida do array usando o index ( 0-5 )
    }
    
    func removerConcluidas(){
        tarefas.removeAll() { tarefas in // A tarefa será apagada caso tarefas.concluida seja verdadeiro.
            return tarefas.concluida
        }
    }
    
    func removerTudo(){
        tarefas.removeAll() { tarefas in // Todas as tarefas serão deletadas, uma vez que tarefas sempre será verdadeiro
            return true
        }
    }
    
}
