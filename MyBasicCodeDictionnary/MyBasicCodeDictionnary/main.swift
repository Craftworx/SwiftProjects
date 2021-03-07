//
//  main.swift
//  MyBasicCodeDictionnary
//
//  Created by Al on 22/11/2020.
//  Copyright © 2020 Cool Apps. All rights reserved.
//

import Foundation

print("ça marche")

var unDictionnaire: Dictionary = ["blabla": "j'y suis"]
print(unDictionnaire.count)
//unDictionnaire.updateValue("j'y suis plus", forKey: "bloblo")
//print(unDictionnaire.count)

if let name = unDictionnaire["blabla"] {
    print(name)
}
//pourquoi ceci marche pas, guard ne marchera pas parce qu'on met un return dans le main mais si on le met dans une fonction ça marchera

func printObject (_ forKey: String) {
    guard let object = unDictionnaire[forKey]
    else { return }
    print(object)
}

let chinois = "中文"
unDictionnaire.updateValue(chinois, forKey:"chinois")
if let name = unDictionnaire["chinois"] {
    print(name)
}

printObject("blabla")

printObject("chinois")

/* utilisation du plist: représentation d'un NSDictionnary (dictionnaire) en XML
dans NSDictionnary, il y des méthodes qui permettent:
de l'écrire: write et on donne l'URL en paramètre
de le lire: contentOf (fait partie des constructeurs de NSDictionnary)
Attention: Il y pas un binding permanent entre le fichier plist et le dictionnaire

 
 */


