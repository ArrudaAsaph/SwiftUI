//
//  MusicPage.swift
//  Aula_4.2
//
//  Created by Turma01-1 on 01/11/24.
//

import SwiftUI

struct MusicPage: View {
    @State var musica: Musicas
    var body: some View {
        ZStack{
            
            LinearGradient(gradient: Gradient(colors: [Color.purple, Color.black]), startPoint: .top, endPoint: .center).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack{
                AsyncImage(url: URL(string: musica.photo)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                    Color.gray
                }.frame(width: 200, height: 200)
                
                Text("\(musica.Title)").foregroundColor(.white)
                    .font(.system(size: 32))
                    .bold()
                
                Text("\(musica.Sub_Title)").foregroundColor(.white)
            
                Spacer()
                HStack{
                    Image(systemName: "shuffle")
                        .font(.system(size: 38))
                        .foregroundColor(.white)
                 
                    Spacer()
                    Image(systemName: "backward.end.fill")
                        .font(.system(size: 38))
                        .foregroundColor(.white)
                        
                    Spacer()

                    Image(systemName: "play.fill")
                        .font(.system(size: 44))
                        .foregroundColor(.white)
                      
                    Spacer()

                    Image(systemName: "backward.end.fill")
                        .font(.system(size: 38))
                        .foregroundColor(.white)
                     
                        .rotationEffect(.degrees(-180))
                    Spacer()

                    Image(systemName: "plus.circle.fill")
                        .font(.system(size: 44))
                        .foregroundColor(.white)
                        
                }
                Spacer()
                Spacer()
                
            }.padding()
        }
        
    }
}


