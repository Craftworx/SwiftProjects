//
//  main.swift
//  MyBasicCodeOptional
//
//  Created by Al on 22/11/2020.
//  Copyright © 2020 Cool Apps. All rights reserved.
//

import Foundation

//essayons de convertir une valeur String et d'afficher un chiffre converti:
//ceci ne marche pas:
//x = Int(chiffreEnLettres)
//le debugger me répond:Value of optional type 'Int?' must be unwrapped to a value of type 'Int'

//et si je mets une condition:
//
//if x = Int(chiffreEnLettres) {
//    print("\(x)")
//} else {
//    print("\(x)")
//}
// le debugger dit: Cannot assign value of type 'Int?' to type 'Int'

//quelques exemples à comprendre:

var test1 = Int("123")

var test0 = String(1234)

var test2 = Int("Guillaume 123")

print(test1)
print("\(test1)")
print(test0)
print(test2)


var x = 0

while (true) {
    
    print("Entrez un nombre :")
    
    let input1 = readLine()
    
    //on va convertir le String optionnel en String:
    if let entierString = input1 {
        
        // cette condition (communémaent appelée "if let") vérifie que la valeur d'entierString n'est pas nil, si cette valeur est nil, la condition sera fausse et le bloc ne sera pas exécuté car quand on essaie d'assigner à un let une valeur nil, il renvoie une erreur. cette manière-ci d'écrire le code est plus explicative mais on pourrait écrire:
        //if let entierString = readline(), ça reveidnrait au même, ensuite:
        
        if let entier = Int(entierString) {
            // et hop on a converti le String en Int non optionnel (m^me rasionnement: le String renverrait nil si il n'est pas un chiffre, et on ne pourrait assigner la valeur nil à entier comme let
            x = x + entier
            
            print("Vous avez entré \(entier), si on l'additionne au précédent, cela donne: \(x)")
            
        } else {
            print("erreur, vous n'avez pas rentré un entier")
        }
    }
}

// A faire rajouter guard


