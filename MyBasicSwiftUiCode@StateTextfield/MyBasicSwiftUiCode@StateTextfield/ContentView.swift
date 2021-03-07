//
//  ContentView.swift
//  MyBasicSwiftUiCode@StateTextfield
//  Created by Al on 21/02/2021.
//  DEUXIEME ETAPE DE BASE

import SwiftUI

struct ContentView: View {
    @State var trialWord: String = "quelque chose"
    @State var input: String = "汉子"
    
    var body: some View {
        VStack {
        Spacer()
            TextField("Caractère chinois a sauver", text: $input).frame(maxWidth: 45)
        Spacer()
        Button(action: {trialWord = input}, label: {Text("On affichage le contenu du TextField")})
        Spacer()
      Text(trialWord)
       Spacer()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
