import Cocoa

var str = "Un programme sur les fichiers et adresses"

// La ligne suivante intialise comme constante l'attribut (property) "default" qui est le seul objet possible (par défaut (singleton)) de la classe FileManager.

let manager = FileManager.default
print("\(manager)")

// A pârtir de cette instance, on peut utiliser les méhodes de la classe. Par exemple en définissant l'adresse utilsatuer par l'attribut "homeDirectoryForCurrentUser". Cet attribut est de type URL. L'URL est un sytème d'adressage universel (incluant l'Internet) mais sur le plan de la syntace, est un type particulier en Swift (une structure).

let home = manager.homeDirectoryForCurrentUser
print("voici le répertoire utilisateur tel qu'identifié par le programme:")
print("\(home)")
// NB ON aurait aussi pu écrire:
let homeSweetHome = FileManager.default.homeDirectoryForCurrentUser
print(homeSweetHome)

// On dispose maintenant de la constante home qui est une URL et à partir de laquelle on peut travailler sur l'arborescence. Remarque: on peut déclarer cet URL à partir du Path, en fait on convertit le String en URL.

//voyons comment créer un fichier: on crée d'abord le path (qui est de la classe String !
let brolpath = "/Users/Al/Desktop/Brolbrol.txt"
// et on utilise une méthode qui décrit bien ce qu'elle fait par son nom, pour créer un fichier en utilsant le path comme argument (et aussi le contenu et les attributs)
manager.createFile(atPath: brolpath, contents: nil, attributes:nil)
//let brolURL = home.appendingPathComponent(brolpath)

