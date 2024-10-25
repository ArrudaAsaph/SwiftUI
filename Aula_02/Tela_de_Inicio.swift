import SwiftUI

struct Tela_de_Inicio: View {
    @State private var textInput = ""
    @State private var showingAlert = false
    
    var body: some View {
        
        ZStack {
            Image("fundo1 1")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Image("NEXUS (1)").resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 280, height: 280)
                
                Text("Bem vindo, \(textInput)")
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .padding()
                
                    ZStack(alignment: .center) { // Centralizar o conteúdo dentro da ZStack
                        if textInput.isEmpty {
                            Text("Digite seu nome")
                                .foregroundColor(.white.opacity(0.7))
                                .multilineTextAlignment(.center) // Centraliza o placeholder
                        }
                        
                        TextField("", text: $textInput)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center) // Centraliza o texto digitado
                            .accentColor(.white)             // Cor do cursor
                            .padding()
                            .background(Color.black.opacity(0.2)) // Fundo translúcido para contraste
                            .cornerRadius(10)
                            .padding(.horizontal)
                    }
                    Spacer()
                    Spacer()
                    Spacer()
                Button("SIGN IN"){
                            showingAlert = true
                }.foregroundColor(.gray)
                        .alert("Seja muito Bem Vindo a Nexus, estamos muito felizes em ter vocë aqui conosco!", isPresented: $showingAlert) {
                            Button("Continuar SIGN IN!", role: .cancel) { }
                        }
                
                Spacer()
            }
            Spacer()
            .padding()
            VStack{
               
                
               
                
                
            }
        }
    }
}

#Preview {
    Tela_de_Inicio()
}
