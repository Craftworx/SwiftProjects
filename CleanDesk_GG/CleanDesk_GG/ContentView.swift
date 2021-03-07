
//
//  ContentView.swift
//  CleanDesk_GG
//
//  Created by Al on 13/12/2020.
//

import SwiftUI

struct ContentView: View {
    //chemin du répertoire de lecture
    @State var selectedOriginFolderPath: String?

    /*
     ce qui suit est une closure, c'est à dire une variable qui est calculée à partir d'autre chose.
     Les méthodes utilisées pour modifier sa valeur sont des méthodes de la classe String. le path de départ est optionnel, peut avoir pour valeur nil mais la variable modifiée pas. Elle aura une valeur, meme si le path est inexistant
    */
    var selectedOriginFolderName: String {
        if var path = self.selectedOriginFolderPath {
            if path.last == "/" {
                path.removeLast()
            }
            let name = path.components(separatedBy: "/").last
            //les ?? servent à donner une valeur par défaut dans la string si le 'name' est est nil
            return "../\(name?.removingPercentEncoding ?? "<No folder>")"
        }
        return "<No folder selected>"
    }
    
    var body: some View {
        VStack {
            /*
            HStack {
                Text("Nombre d'élements:")
                Spacer()
                Text(String(DirectoryManager.shared().elementURLs.count))
            }*/
            MenuButton(self.selectedOriginFolderName) {
                Button("Bureau") {
                    self.selectedOriginFolderPath = "\(NSHomeDirectory())/Desktop"
                }
                Button("Photos") {
                    self.selectedOriginFolderPath = "\(NSHomeDirectory())/Pictures"
                }
            }
            Button("Transferer") {
                DirectoryManager.shared().scan(directoryPath: "\(NSHomeDirectory())/Documents")
                print(DirectoryManager.shared().elementURLs.count)
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
