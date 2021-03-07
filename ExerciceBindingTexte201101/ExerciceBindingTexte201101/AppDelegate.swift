//
//  AppDelegate.swift
//  ExerciceBindingTexte201101
//
//  Created by Al on 01/11/2020.
//  Copyright © 2020 Cool Apps. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    @objc dynamic var text = "hop"

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

