
//  ContentView.swift
//  MyBasicSwiftUiCode@StateButton
//  Created by Al on 08/12/2020.

import SwiftUI

//théorie: l'interface est construite ContentView, body, élement d'inteface VStack et un Button


struct ContentView: View {
@State  var displayedWord = "Initial"
// la variable dont le propertywrapper @State va lui permettre d'etre modifiée en cours d'affichage
    var body: some View {
       VStack {
            Spacer()
            Button("Bouton") {
                displayedWord = "Maintenant changé par le bouton une fois pour toutes"
            }
            .background(Color.red)
            .cornerRadius(40)
            .foregroundColor(.white)
            .padding(5)
            .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: 150.0)
// quelques manières de faire un bouton plus joli
            Spacer()
//théorie ensuite une textbox qui affiche la variable décalrée plus haut
            Text(displayedWord)
                .padding(25)
            Spacer()
        }.frame(width: 200, height: 300, alignment:.center)
        .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
