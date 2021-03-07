//
//  ContentView.swift
//  MyBasicSwiftUICodeDictionary
//
//  Created by Al on 28/02/2021.
//

import SwiftUI
//on commence par définir l'URL en donnant le nom du fichier et en l'ajoutant au path

let dictionaryURL = Bundle.main.resourceURL!.appendingPathComponent("dictio.plist")

// on déclare le dictionnaire
var dict: Dictionary = ["":""]

struct ContentView: View {
    
    var dictionary = NSMutableDictionary(contentsOf: dictionaryURL) as? [String: Any] ?? [String: Any]()
    

    var body: some View {
        Text("Hello, World!")      .frame(maxWidth: .infinity, maxHeight: .infinity)
      
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
