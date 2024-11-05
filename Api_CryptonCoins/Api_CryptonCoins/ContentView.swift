//
//  ContentView.swift
//  Api_CryptonCoins
//
//  Created by Turma01-1 on 04/11/24.
//

import SwiftUI

struct ContentView: View {
@StateObject var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack{
            VStack
            {
                ScrollView{
                    ForEach(viewModel.chars, id: \.self){p in
                NavigationLink(destination: alunosPage())
                        Text(p.nome!).foregroundColor(.black)
                        
                    }
                }
            }
            .onAppear(){
                viewModel.fetch()
            }
        }
    }
}

#Preview {
    ContentView()
}
