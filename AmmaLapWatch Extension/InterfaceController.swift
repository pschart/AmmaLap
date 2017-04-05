//
//  InterfaceController.swift
//  AmmaLapWatch Extension
//
//  Created by Suresh Chanmugam on 1/11/17.
//  Copyright © 2017 Suresh Chanmugam. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
        // clear out the most recently selected child so that when it activates it's not showing the last result while app is still loading
        childLabel.setText("child")
    }

    @IBOutlet var childLabel: WKInterfaceLabel!
    @IBAction func whoseTurn() {
        let childList:Array<String> = ["Seán", "Éamonn", "Pádraic"]
        let randomNumber = Int(arc4random_uniform(UInt32(childList.count)))
        var child:String = ""
        child = childList[randomNumber]
        childLabel.setText(child)
    }
}
