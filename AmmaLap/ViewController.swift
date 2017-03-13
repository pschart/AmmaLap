//
//  ViewController.swift
//  AmmaLap
//
//  Created by Suresh Chanmugam on 1/4/17.
//  Copyright © 2017 Suresh Chanmugam. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var childLabel: UILabel!

    @IBAction func whoseTurn(_ sender: Any) {
        let childList:Array<String> = ["Seán", "Éamonn", "Pádraic"]
        let randomNumber = Int(arc4random_uniform(UInt32(childList.count)))
        var child:String = ""
        child = childList[randomNumber]
        childLabel.text = child
    }
}

