
//  ContentView.swift
//  MyBasicSwiftUICodeButton
//  Created by Al on 07/12/2020.

import SwiftUI

//théorie: l'interface est construite à partir d'une structure, une instance de View ContentView. On peut éventuellement chhanger son nom mais elle est déclarée dans l'AppDelegate.

struct ContentView: View {

// cette déclaration veut dire que la structure ContentView obéit au protocole View
    
// on va déclarer une variable @State (dont la valeur peut changer en cours d'exécution du programme) et notons bien que cela se fait dans la ContentView mais pas dans le body.

@State var displayedWord = "Initial"
    
/*on va ensuite déclarer une variable qui est de type property (attribut) appelée body et appartenant au protocole View.
    Il s'agit d'une variable de type opaque et lorsqu'on déclare une variable de type opaque  on doit utiliser le mot-clé "some" suivi du protocole qui fait que le compilateur sait automatiquement de quel protocole il s'agit.
    C'est dans cette variable opaque property que vont s'ajuster les élements d'interface qu'on appelle container mais toujours à partir d'un seul ! Donc pour en mettre plusieurs il va falloir utiliser une pile (stack), verticale(v) horizontale(h) ou en épaisseur(z).
*/

    var body: some View {

/* body est une closure, c'est une variable qui renvoie ce que va produire le code entre accolades */
       VStack {
            Spacer()
// Un premier bouton très simple. Le texte est donné en argument. Le code à éxécuter est entre accolades (Ce code consiste simplement à attribuer une nouvelle valeur à la variable DisplayedWord (qui sera afichée dans la textbox).
            Button("Bouton") {
                displayedWord = "Maintenant changé par le bouton une fois pour toutes"
            }
            .background(Color.red)
            .cornerRadius(40)
            .foregroundColor(.white)
            .padding(5)
            .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: 150.0)
    
            Spacer()
//On affiche ensuite une textbox qui affiche la variable déclarée plus haut
            Text(displayedWord)
            .padding(25)
            Spacer()
        }.frame(width: 200, height: 300, alignment:.center)
        .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)//ferme VStack
    }   //cette accolade referme body
}   //cette accolade referme View
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
