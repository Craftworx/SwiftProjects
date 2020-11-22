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
print(unDictionnaire.count)

if let name = unDictionnaire["blabla"] {
    print(name)
}
//pourquoi ceci marche pas:
//guard let name = unDictionnaire["blabla"] else { return }

let chinois = "中文"
unDictionnaire.updateValue(chinois, forKey:"chinois")
if let name = unDictionnaire["chinois"] {
    print(name)
}




