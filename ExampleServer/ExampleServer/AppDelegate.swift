//
//  AppDelegate.swift
//  ExampleServer
//
//  Created by Yifei Teng on 2/4/16.
//  Copyright © 2016 Yifei Teng. All rights reserved.
//

import Cocoa
import Wifts
import Caramel

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        print("Before")
        let server = HTTPServer(host: "localhost", port: 8081)
        try! server.start()
        EventLoop.defaultLoop.run()
        print("After")
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

