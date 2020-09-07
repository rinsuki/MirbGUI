//
//  AppDelegate.swift
//  MirbGUI
//
//  Created by user on 2020/09/03.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {

    var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Create the SwiftUI view that provides the window contents.
        // Create the window and set the content view.
        let window = NSWindow(contentViewController: ViewController())
        window.makeKeyAndOrderFront(nil)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

