//
//  CriarTarefaModal.swift
//  TarefasMVVM
//
//  Created by Micael Martins de Moura on 05/11/25.
//

import SwiftUI

struct CriarTarefaModal: View {
    @ObservedObject var viewModel: FuncTarefa
    @Binding var isPresented: Bool
    @State private var titulo = ""
    
    var body: some View {
        NavigationView {
            Form {
                TextField("Titulo", text: $titulo)
            }.navigationTitle("Nova Tarefa")
                .toolbar {
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Salvar") {
                            viewModel.adicionarTarefa(titulo: titulo)
                            isPresented = false
                        }
                    }
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Cancelar") {
                            isPresented = false
                        }
                    }
                }
        }
    }
}
