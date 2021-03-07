import Cocoa
// Première partie purement théorique. Voyons la différence entre le path et l'URL, qui ne sont pas du même type
// le path est un String qui définit le chemin comme en UNIX
let completePathOfMyFile = "/Users/Al/Swift/Github/SwiftProjects/Files.playground"
print(completePathOfMyFile)
//l'URL est une sytème d'adressage universel (incluant l'Internet). en swift on utilise l'Url, et on on va déclarer cett URL à partir du Path, en fait on convertit le String en URL qui un type particulier en swift.
let completeUrlOfMyFile = URL(fileURLWithPath: completePathOfMyFile)
print(completeUrlOfMyFile)


//Pour gérer, créer, dépalcer , des fichiers et des repéertoires, on va utiliser la classe FileManager dont l'instance unique (singleton) default possède les variables et les méthodes que nous allons utiliser. En premier lieu: la homeDirectoryForCurrentUser... qui, comme son nom l'indique retourne l'URL du folder Home de l'utilisateur

let home = FileManager.default.homeDirectoryForCurrentUser
print(home)
// A partir de là on va pouvoir doner une adresse à un fichier qui marchera pour n'importe quel utilisateur.
let playgroundPath = "/Users/Al/Swift/Github/SwiftProjects/File.playground"
// ici nous modifions seuk-lement l'Url et on tilise les méthodes liées au "type" Url"
let playgroundUrl = home.appendingPathComponent(playgroundPath)

playgroundUrl.path
playgroundUrl.absoluteString
playgroundUrl.absoluteURL
playgroundUrl.baseURL
playgroundUrl.pathComponents
playgroundUrl.lastPathComponent
playgroundUrl.pathExtension
playgroundUrl.isFileURL
playgroundUrl.hasDirectoryPath


// Voyons ici comment à partir de ces variables et de la méthode "appendingPathCommponent", nous pouvons écrire un fichier sur le bureau. Remarque: il n'est pas possible de créer un nouveau dossier en écrivant simplement le nom de ce dossier dans le path. cf plus loin

let text: String = """
Alors on se lance. Ce programme a été exécuté le \(Date())
"""
let filePath = "FichierExerciceSwift.txt" //le nom du fichier avec extension, on verra plus loin comment changer l'extension

let fileFolder = "Desktop" // dossier qu'on va rajouter dans le l'Url, on a défini plus haut "home" comme le dossier utilisateur, donc on rajoute le dossier Desktop (pas besoin de rajouter des slash à chaque composant, Swift s'en charge)

var fileUrl = home.appendingPathComponent(fileFolder, isDirectory: true)
//on rajoute le path pour initialiser l'Url finale:

// je ne sais pourquoi ceci ne marche pas:
//var fileUrl = fileUrl.appendingPathComponent(fileFolder)
//ni ceci:
//fileUrl.appendingPathComponent(fileFolder)
// Je suis obligé de renommer la variable !

var fileUrl2 = fileUrl.appendingPathComponent(filePath)
print(fileUrl2.pathComponents)
// on peut donc créer et écrire notre fichier:

do {
try text.write(to: fileUrl2, atomically: true, encoding: .utf8)
}
catch { print("foutu")}

//Questions à Guillaume:
//1. pourquoi ça ne marche pas ?
//2. qu'est-ce que le do try catch ? quand l'utiliser ? ici il y a um moment où ce n'était pas nécessaire puis son absence empêchait de compiler
//3. Dans l'application le home folder est loin dans l'arborescence


// Essayons maintenant de créer un dossier sur le Desktop en utilisant une méthode de FileManager:
var fileUrlDir = fileUrl.appendingPathComponent("Swiftlab")
var fileUrlDir2 = fileUrlDir.appendingPathComponent("Swiftlab2")
var fileUrlDir3 = fileUrlDir2.appendingPathComponent("Swiftlab3")
do {try FileManager.default.createDirectory(at: fileUrlDir2, withIntermediateDirectories: true, attributes: nil)
    }
catch {
    print("eh ben keskispasse?")
    }

//Essayons maintenat de déplacer un fichier !


