//
//  AppDelegate.swift
//  ExampleServer
//
//  Created by Yifei Teng on 2/4/16.
//  Copyright © 2016 Yifei Teng. All rights reserved.
//

import Cocoa
import Wifts

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        print("Before")
        startServer()
        print("After")
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

