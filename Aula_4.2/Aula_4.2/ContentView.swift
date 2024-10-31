//
//  ContentView.swift
//  Aula_4.2
//
//  Created by Turma01-1 on 30/10/24.
//

import SwiftUI
struct Musicas : Hashable{
    var Title: String
    var Sub_Title: String
    var photo: String
}




struct ContentView: View {
    let url = URL(string: "https://is1-ssl.mzstatic.com/image/thumb/Features124/v4/dd/8a/24/dd8a2401-492c-77b3-b13c-b6d51f711527/dj.wkeljoft.jpg/1200x1200bf-60.jpg")
    
    var musicas = [
        Musicas(Title: "Echoes of Tomorrow", Sub_Title: "Neon Pulse", photo: "https://is1-ssl.mzstatic.com/image/thumb/Features124/v4/dd/8a/24/dd8a2401-492c-77b3-b13c-b6d51f711527/dj.wkeljoft.jpg/1200x1200bf-60.jpg"),
        Musicas(Title: "Skyline Dreams", Sub_Title: "Atlas Beats", photo: "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/armament-guns-music-album-cover-template-design-ad762621b1abfd9221d49b92c7b4cb73_screen.jpg?ts=1635377043"),
        Musicas(Title: "Waves of Eternity", Sub_Title: "Luna Horizon", photo: "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/electronic-music-album-cover-animated-design-template-d1cc77c6d34c507a1e643ef978db62b0_screen.jpg?ts=1622223862"),
        Musicas(Title: "Rhythm of the Stars", Sub_Title: "Celestial Vibes", photo: "https://lh3.googleusercontent.com/proxy/1ClldLfRp1XIfPYl1nLmvXXEeppzXs9eRP-ZCZl7Da-0BjU6O7W0wrSsgcRu_hwy1izcqv-4K_uUuhv1P60KEVbK-w4rsGLIXp8G7yJaOp3eMbclT8XE2VzTJ-vw-nShJUkbba__KtYmQQJi"),
        Musicas(Title: "Beyond the Horizon", Sub_Title: "EchoShade", photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQb1tPO1BUA6PKQd0YB9-_z7CjDCNRBswDuBxKiPitFNPsjyZg-jdJvyFWjrv8sHA9Anmc&usqp=CAU"),
        Musicas(Title: "Midnight Mirage", Sub_Title: "Solar Drift", photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKxRJBsfxDFWi0pBH1LI4QDoE5JmeOMKTVrrPByobA3CbE77-pkV_eT08IMjdTUECjTMU&usqp=CAU"),
        Musicas(Title: "Lost in Frequencies", Sub_Title: "Stellar Sound", photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfgFb4GSwEUp6-81ZoxDmvr3oaRnw_XwtlCXtAyiNv23MPugpuWhwhN1qGm2gxNqi64gA&usqp=CAU"),
        Musicas(Title: "Pulse of the Night", Sub_Title: "Nightfall Groove", photo: "https://cdns-images.dzcdn.net/images/cover/6973f4264ce1b627132ec94e25339e93/200x200.jpg"),
        Musicas(Title: "Into the Abyss", Sub_Title: "ShadowWave", photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJCoANAt-L_O8b_C23z_z-Q8Bzgy214waN0AUcp1r5fhFpVP5f9hhH8wwYQnonmFSjT8c&usqp=CAU"),
        Musicas(Title: "Electric Waves", Sub_Title: "Nova Flow", photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShkPSO7d7mj8aF9BBW_4HoL8HsEr69V1GuImq404_fh2p9blzl8TRmoZ_z80m2ZS0E7EM&usqp=CAU")
    ]
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.purple, Color.black]), startPoint: .top, endPoint: .center).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            ScrollView{
                VStack{
                    AsyncImage(url: url, content: {
                        returnedImage in returnedImage
                            .resizable()
                            .scaledToFill()
                            .frame(width: 250, height: 250)
                            }, placeholder: {
                                ProgressView()
                                })
                    Spacer(minLength: 20)
                    Text("Asaph Arruda Playlist")
                        .foregroundColor(.white)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                    
                    Spacer(minLength: 60)
                    ForEach(musicas, id: \.self) { a in
                        HStack{
                            AsyncImage(url: URL(string: a.photo)) { image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                            } placeholder: {
                                Color.gray
                            }.frame(width: 80, height: 80)
                            HStack{
                                VStack(alignment: .leading){
                                    Text(a.Title).foregroundColor(.white)
                                        .font(.system(size: 20))
                                        .bold()
                                    Text(a.Sub_Title).foregroundColor(.white)
                                }
                                
                                Spacer()
                                Image(systemName: "ellipsis").foregroundColor(.white).font(.title2)
                                
                                
                            }
                    }
                        
                    }
                }
                
            } //.padding()
        }
    }
        
}

#Preview {
    ContentView()
}
