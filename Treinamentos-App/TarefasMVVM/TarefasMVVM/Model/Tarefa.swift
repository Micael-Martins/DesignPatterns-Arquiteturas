//
//  Tarefa.swift
//  TarefasMVVM
//
//  Created by Micael Martins de Moura on 05/11/25.
//

import Foundation

// Defini a estrutura principal da minha tarefa.
struct Tarefa: Codable, Identifiable {
    let id: UUID
    var nome: String
    var concluida: Bool
    var data: Date
    
    
// Inicializo as variaveis para facilitar no momento de criação de novas tarefas. A unica váriavel que precisará ser definida será "nome".
    init(id: UUID = UUID(), nome: String, concluida: Bool = false, date: Date = Date()) {
        self.id = id
        self.nome = nome
        self.concluida = concluida
        self.data = date
    }
}

