//
//  ContentView.swift
//  MyBasicSwiftUICodeImage
//  Created by Al on 07/02/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
        Text("Essai affichage image le plus simple:")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        Spacer()
//On va afficher une image dont la taille est compatible (200pixels):
        Image("Smile200pix")
        Spacer()
// puis une autre qu'on va redimensionner, d'abord grâce au modificateur resizable ensuite grâce au modificateur frame auquel on passe les arguments de taille
        Image("Sad")
            .resizable()
            .frame(width: 200, height: 200)
        Spacer()
        }.frame(width: 400, height: 500, alignment:.center)//ferme le container VStack
    }//ferme l'attribut body
}//ferme ContentView


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
