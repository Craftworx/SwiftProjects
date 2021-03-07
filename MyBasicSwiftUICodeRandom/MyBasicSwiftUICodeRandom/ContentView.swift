//
//  ContentView.swift
//  MyBasicSwiftUICodeRandom
//
//  Created by Al on 21/02/2021.
//

import SwiftUI

struct ContentView: View {
    
    var nbre = Int.random(in: 0...999)
        
    var body: some View {
        
        var nom: String = ("\(nbre)")
        
        Text(nom)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
