//
//  Calculadora_IMC.swift
//  Aula_01
//
//  Created by Turma01-1 on 24/10/24.
//

import SwiftUI
func IMC(altura: Double, peso: Double) -> (valor: Double, classificacao: String) {
    let a: Double = peso / (altura * altura)
    let classificacao: String
    
    if a < 18.5 {
        classificacao = "Baixo Peso"
    } else if a >= 18.5 && a <= 24.99 {
        classificacao = "Normal"
    } else if a > 25 && a <= 29.99 {
        classificacao = "Sobrepeso"
    } else {
        classificacao = "Obesidade"
    }
    
    return (a, classificacao)
}

struct Calculadora_IMC: View {
    @State var background_color: Color = Color.purple

    var body: some View {
        ZStack{
            background_color.ignoresSafeArea()
            
            VStack{
                Text("Calculadora IMC").font(.largeTitle)
            }
        }
    }
}

#Preview {
    Calculadora_IMC()
}
