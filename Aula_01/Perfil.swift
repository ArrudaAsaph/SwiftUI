//
//  Perfil.swift
//  Aula_01
//
//  Created by Turma01-1 on 23/10/24.
//

import SwiftUI

struct Perfil: View {
    var body: some View {
        HStack{
            Image("swift-og")
                .resizable()
                .frame(width: 180, height: 180)
                .foregroundColor(.white)
                .padding(0)
                .background(Color.black)
                .clipShape(Circle())
            Spacer()
            VStack{
                
                Text("Asaph Arruda").font(.system(size: 27))
                
                Text("Programador").font(.system(size: 27)).foregroundStyle(.blue)
                
                Text("FULL STACK").font(.system(size: 27)).foregroundStyle(.red)
            }
            
        }
        .padding()
    }
    
}

#Preview {
    Perfil()
}

