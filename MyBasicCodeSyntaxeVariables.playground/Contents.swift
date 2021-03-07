
//  ExpoSyntaxe
//  Created by Al on 03/10/2020. Copyright © 2020 Cool Apps. All rights reserved.

import Foundation

//la fonction print nécessite l'utilisation des parentheses et des guillemets

print("Hello, World!")


//declaration initialisation d'une variable String:

var maPremiereVariable:String = "Je suis une chaîne de mots"

/* Remarquons dans l'ordre:
 on choisit var ou let (constante) et on privilégie let si possible
 on indique le type après deux points (pas obligatoire, car il y a inférence)
 le nom commence par une minuscule
 on met un signe égal d'assignation
 on met le string entre guillets doubles
 */


//Voici l'inférence:

let maDeuxiemeVariable = "et moi aussi ! "
let monPremierchiffre = 5

print(maDeuxiemeVariable)
print(monPremierchiffre)

//Pour imprimer les deux, notons les virgules:

print(monPremierchiffre, maPremiereVariable, maDeuxiemeVariable)

print("Voici ", monPremierchiffre, " un chiffre")

//mais si on veut insérer une variable (qu'elle soit UN String ou un Int dans les guillemets d'un String: on utilise backslash + parenthèses

print("mon chiffre: \(monPremierchiffre)")

// idem pour combiner deux Strings à l'impression dans un autre

print("\(maPremiereVariable) et \(maDeuxiemeVariable)")

// ou pour les concaténer dans une nouvelle variable, en n'ouliant pas les guillemets:

var maTroisiemeVariable = "\(maPremiereVariable) + \(maDeuxiemeVariable)"

// pour concaténer String et Int:

var maQuatriemeVariable = "\(maPremiereVariable) \(monPremierchiffre)"
print(maQuatriemeVariable)

//pour additionner deux Int dans une nouvelle variable:

var unChiffreString:String = "5"
var unAutreChiffreString:String = "4"
var unChiffreInt = Int(unChiffreString)!
var unAutreChiffreInt = Int(unAutreChiffreString)!
var laSommeDesDeuxChiffres = (unChiffreInt+unAutreChiffreInt)
print("la somme est : \(laSommeDesDeuxChiffres)")

