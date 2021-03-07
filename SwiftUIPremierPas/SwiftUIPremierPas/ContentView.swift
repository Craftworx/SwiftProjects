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
    
    @State private var user: User?
    
    // propre à la vue et ne sera utilisé par l'exterieur
    // définit l'etat et la logique de la vue.
    @State private var loading: Bool = true
    
    var body: some View {
        VStack {
            Text("Chargement ..")
                .opacity(self.loading ? 1.0 : 0.4)
            Button("Cliquer pour charger !") {
                self.loading = false
                self.user = User(name: "Jean Dupont", age: 24)
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    //on cahnge les données deu modèle
                    self.user?.age = 25
                }
            }
            if !self.loading {
                if let user = self.user {
                    UserProfileView(user: user)
                    UserProfileView(user: user)
                }
            }
        }.frame(width: 300, height: 200, alignment: .center)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
