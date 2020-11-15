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
			print(languageDict)
		}
	}
	var language = Language.French {
		didSet {
			//lorsque la variable 'language' prendra une nouvelle valeur, le block de code ci dessous sera executé
			switch language {
			case .French:
				languageDict = NSMutableDictionary(contentsOf: self.saveURL(filename: "lang_fr.plist"))
			case .Dutch:
				languageDict = NSMutableDictionary(contentsOf: self.saveURL(filename: "lang_nl.plist"))
			case .English:
				languageDict = NSMutableDictionary(contentsOf: self.saveURL(filename: "lang_en.plist"))
			}
		}
	}

	func applicationDidFinishLaunching(_ aNotification: Notification) {
		// Insert code here to initialize your application
		language = .French
		guard let dict = languageDict else {
			return
		}
		
		//dict["title"] = "blabla"
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
	
	
	func saveURL(filename: String?) -> URL {
		var result = FileManager.default.homeDirectoryForCurrentUser
		if let name = filename {
			result.appendPathComponent(name)
		}
		
		return result
	}

}

