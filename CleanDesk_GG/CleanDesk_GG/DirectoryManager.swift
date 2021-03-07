//
//  DirectoryManager.swift
//  CleanDesk_GG
//
//  Created by Al on 13/12/2020.
//

import Foundation
import Combine

class DirectoryManager: ObservableObject {
    @Published var elementURLs = [URL]()
    
    static private var sharedInstance: DirectoryManager?
    // cette fonction sert à créer une instance permanente de DirectoryManager à laquelle on peut se référer en permanence pour utiliser les méthodes de la classe DirectoryManager. c'est intéressant que ce soit toujours la même instance car on peut reprendre ailleurs (dans plusieurs View) ses propriétés comme le tableau elementURLS qui se référera toujours à la même instance.
    //  ça va simplifier l'écriture puisqu'il suffira d'écrire DirectoryManager. shared() pour faire appel aux propriétés et aux méthodes de la classe.
    
    
    static func shared() -> DirectoryManager {
        if sharedInstance == nil {
            sharedInstance = DirectoryManager()
        }
        return sharedInstance!
    }
    
    // la fonction suivante permet entre autres de se situer dans l'arborescence de fichiers en utilsant comem seul repère le string (path) donné en argument de la fonction (plus besoin de manipuler des URL). D'où l'utilisation d'un if let pour le cas où ce path n'existerait pas.
    
    func scan(directoryPath: String) {
        if let url = URL(string: directoryPath) {
            do {
                //on va mettre dans le tableau toutes les URL de sitems du réperteoire donné en argument
                self.elementURLs = try FileManager.default.contentsOfDirectory(at: url, includingPropertiesForKeys: nil, options: [.skipsSubdirectoryDescendants, .skipsHiddenFiles])
            } catch {
                //fail to scan
            }
        }
    }
    
    func moveElements(from originPath: String, to destPath: String) {
        //TODO: watch folder to keep sync ?
        //get latest folders from scanning
        self.scan(directoryPath: originPath)
        
        for elementURL in self.elementURLs {
            do {
                try FileManager.default.moveItem(atPath: elementURL.absoluteString, toPath: destPath)
            } catch {
                print("Failed to move \(elementURL). Error: \(error)")
            }
        }
    }
}
