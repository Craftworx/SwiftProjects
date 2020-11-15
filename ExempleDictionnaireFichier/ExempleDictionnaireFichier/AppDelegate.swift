//
//  AppDelegate.swift
//  ExempleDictionnaireFichier
//
//  Created by Guillaume Gekière on 04/11/2020.
//

import Cocoa

enum Language {
	case French
	case English
	case Dutch
}

//création de constances
let LanguageDictionaryTitleKey 		= "title"
let LanguageDictionaryContentKey 	= "content"

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

	@IBOutlet var window: NSWindow!
	
	var languageDict: NSMutableDictionary? {
		didSet {
            //callback
			print(languageDict)
		}
	}
	var language = Language.French {
		didSet {
			//lorsque la variable 'language' prendra une nouvelle valeur, le block de code ci dessous sera executé
            var dictURL: URL?
            
            switch language {
            case .French:
                dictURL = self.languageDictURL(filename: "lang_fr")
            case .Dutch:
                dictURL = self.languageDictURL(filename: "lang_nl")
            case .English:
                dictURL = self.languageDictURL(filename: "lang_en")
            }
            
            if (dictURL != nil) {
                // '!' transforme la variable en non optionnel (attention qu'elle ne soit pas nil !)
                languageDict = NSMutableDictionary(contentsOf: dictURL!)
            }
		}
	}

	func applicationDidFinishLaunching(_ aNotification: Notification) {
		// Insert code here to initialize your application
        // assignation pour faire appel au callback didset du language
		language = .French
        //équivalent if let
		guard let dict = languageDict else {
			return
		}
		
		//dict["title"] = "blabla"
        // changement de la valeur à la clé LanguageDictionaryTitleKey dans le dictionaire
		dict[LanguageDictionaryTitleKey] = "Another value"
	}

	func applicationWillTerminate(_ aNotification: Notification) {
		// Insert code here to tear down your application
	}

	@IBAction func languagePopUpButtonChanged(sender: Any) {
		if let popup = sender as? NSPopUpButton {
			if let selectedItem = popup.selectedItem {
				switch selectedItem.tag {
				case 0:
					self.language = .French
				case 1:
					self.language = .English
				case 2:
					self.language = .Dutch
				default:
					break
				}
			}
		}
	}
	
    /*
     //ne sert à rien dans ce contexte
     //laissé à titre informatif
	@IBAction func saveButtonPushed(sneder: Any) {
		if let dict = self.languageDict {
			do {
				try dict.write(to: self.saveURL(filename: "test.plist"))
			} catch  {
				print("Save failed...")
			}
		} else {
			print("empty_dictionary")
		}
	}
	*/
	
    /*
	func saveURL(filename: String?) -> URL {
		var result = FileManager.default.homeDirectoryForCurrentUser
		if let name = filename {
			result.appendPathComponent(name)
		}
		
		return result
	}
    */
    
    func languageDictURL(filename: String?) -> URL? {
        return Bundle.main.url(forResource: filename, withExtension: "plist")
    }

}

