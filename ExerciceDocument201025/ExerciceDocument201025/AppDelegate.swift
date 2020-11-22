//
//  AppDelegate.swift
//  ExerciceDocument201025
//
//  Created by Al on 25/10/2020.
//  Copyright © 2020 Cool Apps. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    
        @IBOutlet weak var window: NSWindow!
        
        @IBOutlet weak var textNameInputByUser: NSTextField!
        @IBOutlet weak var textFirstNameInputByUser: NSTextField!
        
        @IBAction func buttonSavePushed (sender: Any) {
            
            print("bouton poussé: \(textNameInputByUser.stringValue) \(textFirstNameInputByUser.stringValue)")
            
            let text = "\(textNameInputByUser.stringValue) \(textFirstNameInputByUser.stringValue)"
            let text2 = "est apparu ici cet après-midi"
            
            let file = "fileOfExerciceDocument201025.txt" //this is the file. we will write to and read from it
            
            if let dir = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first {
                let fileURL = dir.appendingPathComponent(file) //writing
                do {
                    try text.write(to: fileURL, atomically: true, encoding: .utf8)
                    
                    try text2.write(to: fileURL, atomically: true, encoding: .utf8)
                    
                }
                    
                catch {/* error handling here */}
                
                //reading
                do {
                    _ = try String(contentsOf: fileURL, encoding: .utf8)
                }
                catch {/* error handling here */}
            }
        }
        
        
        func applicationDidFinishLaunching(_ aNotification: Notification) {
            // Insert code here to initialize your application
        }
        
        func applicationWillTerminate(_ aNotification: Notification) {
            // Insert code here to tear down your application
        }
        
        
    }
    


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }




