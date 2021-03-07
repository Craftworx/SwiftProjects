//  MyBasicSwiftUICode@StateButton2
//  Created by Al on 08/12/2020.
// But: faire interagir deux éléments d'inteface avec des variables @State qui vont varier sur l'interface

import SwiftUI

struct ContentView: View {

@State private var showGreeting = false
@State private var showAnotherGreeting = false
@State private var counter = 0.5
    // on met à 0.5 car il ne doit s'incrémenter de 1 que toutes les deux fois où on appuie sur le bouton
    var body: some View {
      VStack {
// d'abord un toggle qui met le premier bool à true quand coché
        Toggle(isOn: $showGreeting) { Text("Show welcome message")
        }.padding()
// ensuite un bouton qui fait alterner la valeur du deuxième bool et qui incrémente le compteur de 0.5
        Button("Show / Dont'show") {
            if showAnotherGreeting { showAnotherGreeting = false}
            else if !showAnotherGreeting { showAnotherGreeting = true}
            counter += 0.5
        }
  // et un petit algorithme qui affiche le message et le compteur si les deux booléens sont true
        if showGreeting && showAnotherGreeting {
            Text("Hello World!")
            Text("\(Int(counter)) fois")
        }
    }.frame(width: 200, height: 300, alignment:.center)
      .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
//le frame autour du VStack
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
