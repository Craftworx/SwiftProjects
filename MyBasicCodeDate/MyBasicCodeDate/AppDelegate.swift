//
//  AppDelegate.swift
//  MyBasicCodeDate
//
//  Created by Al on 22/11/2020.
//  Copyright © 2020 Cool Apps. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @objc dynamic var date: Date?
    @IBAction func saveButtonPushed(sender: Any) {
        guard let date = self.date else {
            return
        }
        let dateFormatter = DateFormatter()
        // dateFormatter instance de la classe DateFormatter qui permet à la fois de récupérer une date à partir d'un String et aussi de créer une String à partir d'une date
        dateFormatter.dateFormat = "dd-MM-yyyy"
        //cette méthode décrit le format d'entrée ou de sortie
        
        let dateString = dateFormatter.string(from: date)
        
        print(dateString)
    }

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

