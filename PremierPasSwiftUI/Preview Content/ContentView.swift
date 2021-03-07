//
//  ContentView.swift
//  PremierPasSwiftUI
//
//  Created by Al on 29/11/2020.
//

import SwiftUI

struct ContentView: View {
    @State var nom: String = ""
    @State var age: Int = 0
    
    // propre à la vue et ne sera utilisé par l'exterieur
    // définit l'etat et la logique de la vue.
    @State var loading: Bool = true
    
    var body: some View {
        VStack {
            Text("Chargement ..")
                .opacity(self.loading ? 1.0 : 0.4)
            Button("Cliquer pour charger !") {
                self.nom = "Jean Dupont"
                self.age = 43
                self.loading = false
            }
            if !self.loading {
                HStack {
                    Text(self.nom)
                    Spacer()
                    Text(String(self.age))
                }.padding()
            }
        }.frame(width: 300, height: 200, alignment: .center)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
