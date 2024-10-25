//
//  Insta.swift
//  Aula_01
//
//  Created by Turma01-1 on 24/10/24.
//

import SwiftUI

struct Insta: View {
    var body: some View {
        VStack{
            HStack{
                Image("swift-og")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .clipShape(Circle())
                Spacer()
                Spacer()
                VStack{
                    Text("123").font(.system(size: 20))
                    Text("Posts").font(.system(size: 20))
                }
                Spacer()
                VStack{
                    Text("15K").font(.system(size: 20))
                    Text("Followers").font(.system(size: 19))
                }
                Spacer()
                VStack{
                    Text("2K").font(.system(size: 20))
                    Text("Following").font(.system(size: 19))
                }
                
                
            }
            Spacer()
            
        } .padding()
    }
}

#Preview {
    Insta()
}
