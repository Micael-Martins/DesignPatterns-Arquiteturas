//
//  ContentView.swift
//  TarefasMVVM
//
//  Created by Micael Martins de Moura on 04/11/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = FuncTarefa()
    @State private var ModaliIsOn: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(.systemGray6)
                    .ignoresSafeArea(edges: .all)
                if !vm.tarefas.isEmpty {
                    List {
                        ForEach (vm.tarefas) { tarefa in
                            HStack {
                                Text(tarefa.nome)
                                    .strikethrough(tarefa.concluida, color: .gray)
                                    .opacity(tarefa.concluida ? 0.6 : 1.0)
                                    .animation(.easeInOut, value: tarefa.concluida)
                                
                                Spacer()
                                
                                Image(systemName: tarefa.concluida ? "checkmark.circle.fill" : "circle")
                                        .scaleEffect(tarefa.concluida ? 1.2 : 1.0)
                                        .animation(.spring(), value: tarefa.concluida)
                                
                            }.contentShape(Rectangle())
                                .onTapGesture {
                                    withAnimation { vm.alternarConclusao(tarefa) }
                                }
                        }.onDelete(perform: vm.removerTarefa)
                        
                        if vm.tarefas.contains(where: { $0.concluida }) {
                            Button("Apagar tarefas concluídas") {
                                withAnimation { vm.removerConcluidas() }
                            }
                        }
                        
                    }
                } else {
                    HStack {
                        Text("Aperta no +")
                    }
                }
            }.navigationTitle("Tarefas")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: { ModaliIsOn = true}) {
                            Image(systemName: "plus")
                        }
                    }
                }.sheet(isPresented: $ModaliIsOn) {
                    CriarTarefaModal(viewModel: vm, isPresented: $ModaliIsOn).presentationDetents([.medium])
                }

        }
    }
}
