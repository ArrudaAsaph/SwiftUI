//
//  Tela_4.swift
//  Aula_4
//
//  Created by Turma01-1 on 30/10/24.
//

import SwiftUI

struct Tela_4: View {
    var body: some View {
        ZStack{
            List {
                
                VStack{
                    HStack{
                        
                        Text("Pincel").font(.system(size: 30))
                        Spacer()
                        Image(systemName: "paintbrush.pointed").resizable().frame(width:30,height: 30 )
                    }
                    Spacer()
                    HStack{
                        
                        Text("Lapis").font(.system(size: 30))
                        Spacer()
                        Image(systemName: "pencil.tip").resizable().frame(width:30,height: 30 )
                    }
                    
                    Spacer()
                    HStack{
                        
                        Text("Lixo").font(.system(size: 30))
                        Spacer()
                        Image(systemName: "trash.fill").resizable().frame(width:30,height: 30 )
                    }
                    
                }
            }
            
        }
    }
}

#Preview {
    Tela_4()
}
