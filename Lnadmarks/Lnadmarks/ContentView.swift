//
//  ContentView.swift
//  Lnadmarks
//
//  Created by Al on 29/11/2020.
//

import SwiftUI

//exercice de placement des éléments graphiques
let str = "Hello SwiftUI !"

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) { HStack {
            Text("Turtle Rock")
                .font(.title)
            Spacer()
            VStack(alignment: .trailing) {
                Text("A great place")
                    .font(.footnote)
                Text("somewhere in") .font(.footnote)
            }
        }
          
            HStack {
                Text(/*@START_MENU_TOKEN@*/"Joshua Tree National Park"/*@END_MENU_TOKEN@*/)
                    .font(.subheadline)
                Spacer()
                Text("California")
                    .font(.subheadline)
                    .foregroundColor(Color.blue)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
