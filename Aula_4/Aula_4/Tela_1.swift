//
//  Tela_1.swift
//  Aula_4
//
//  Created by Turma01-1 on 30/10/24.
//

import SwiftUI

struct Tela_1: View {
    var body: some View {
        ZStack{
            
            
            Color(.gray900).ignoresSafeArea()
            Circle()
                .fill(Color.green700) // Cor do círculo
                .frame(width: 350, height: 350)
            Image(systemName: "paintbrush.pointed").resizable().frame(width:280,height: 280 ).foregroundColor(.gray900)
        }
    }
}

#Preview {
    Tela_1()
}
