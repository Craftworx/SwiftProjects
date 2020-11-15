//
//  AppDelegate.swift
//  ExerciceMultiple201025
//
//  Created by Al on 25/10/2020.
//  Copyright © 2020 Cool Apps. All rights reserved.
//

import Cocoa

enum Language {
    case French
    case English
}

@NSApplicationMain

class AppDelegate: NSObject, NSApplicationDelegate, NSTextFieldDelegate {
    @IBOutlet weak var window: NSWindow!
    
    @IBOutlet weak var textNameInputByUser: NSTextField!
    @IBOutlet weak var textFirstNameInputByUser: NSTextField!
    @IBOutlet weak var datePicker: NSDatePicker!
    //@IBOutlet weak var frenchRadioButton: NSButton!
    //@IBOutlet weak var englishRadioButton: NSButton!
    
    @objc dynamic var isFrenchSelected = false
    //@objc dynamic var languageSelected = Language.English
    @objc dynamic var date = Date() // question à Guillaume, je'arrive pas à obtenir la date
    
    //MARK: -
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        //self.datePicker.minDate = Date(timeIntervalSince1970: 24300)
        self.datePicker.maxDate = Date()
        print(date)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
    
    //MARK: - ACTIONS
    @IBAction func buttonSavePushed (sender: Any) {
        var text = "\(textNameInputByUser.stringValue) \(textFirstNameInputByUser.stringValue) (\(self.age()))"
        
        let frText2 = "est apparu(e) ici cet après-midi"
        let enText2 = "showed up today in the afternoon"
        
        if isFrenchSelected {
            text = "\(text) \(frText2)"
        } else {
            text = "\(text) \(enText2)"
        }
        
        print(text)
        
        let file = "FileXcode.txt"
        
        //Le Sandboxing portège par défaut l'ecriture dans le dossier indiqué, il faut dès lors le désactiver
        let dir = FileManager.default.homeDirectoryForCurrentUser
        let myFileUrl = dir.appendingPathComponent(file)
        print(myFileUrl)
        do {
            try text.write(to: myFileUrl, atomically: true, encoding: .utf8)
        }
        catch {/* error handling here */}
    }
    
    //    @IBAction func radioButtonChanged(sender: Any){
    //        if let control = sender as? NSControl {
    //            if control == frenchRadioButton {
    //                print("French selected")
    //            } //1 --> Female
    //            else if control == englishRadioButton {
    //                print("English selected")
    //            }
    //        }
    //    }
    
    // questions à Guillaume: pas moyen de retrouner un résultat à une méthode IBaction, donc comment gérer des boutons ?
    
    //MARK: - UTILITIES
    
    @objc func age() -> Int {
        let calendar = Calendar.current
        let ageComponents = calendar.dateComponents([.year, .day], from: self.datePicker.dateValue, to: Date())
        let age = ageComponents.year ?? 0
        return age
    }
}

