//
//  Tela_3.swift
//  Aula_4
//
//  Created by Turma01-1 on 30/10/24.
//

import SwiftUI

struct Tela_3: View {
    var body: some View {
        ZStack{
            Color(.gray900).ignoresSafeArea()
            Image(systemName: "trash.circle.fill").resizable().frame(width:280,height: 280 ).foregroundColor(.green700)
        }
    }
}

#Preview {
    Tela_3()
}
