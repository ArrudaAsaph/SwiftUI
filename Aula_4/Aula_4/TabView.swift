//
//  TabView.swift
//  Aula_4
//
//  Created by Turma01-1 on 30/10/24.
//

import SwiftUI

struct TabView2: View {
    var body: some View {
        TabView{
            Tela_1()
                .badge(1)
                .tabItem {
                    Label("Brush",systemImage: "paintbrush.fill")
                }
            Tela_2()
                .tabItem {
                    Label("Lápis",systemImage: "pencil.tip.crop.circle.fill")
                }
            
            Tela_3()
                .tabItem {
                    Label("Lápis",systemImage:  "trash.fill")
                }
            
            
            Tela_4()
                .tabItem {
                    Label("Lista",systemImage:   "list.bullet.rectangle.portrait.fill")
                }
        }
    }
}

#Preview {
    TabView2()
}
