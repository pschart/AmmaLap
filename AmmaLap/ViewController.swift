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
	var childList:Array<String> = []	// will store the names of all children once view is loaded
	var childUsed:Array<String> = []	// stores the names of children who have been picked
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// TODO: load names from preferences/allow editing of list
		childList.append(contentsOf: ["Seán", "Éamonn", "Pádraic"])	// initialize the list of children;
		// Do any additional setup after loading the view, typically from a nib.
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	@IBOutlet weak var childLabel: UILabel!
	
	@IBAction func whoseTurn(_ sender: Any) {
		/* we want each child to have a "turn" before any of them are picked multiple times. we'll remove
		names from the list array and add them to the used array until they've all been picked */
		if childList.count < 1	// If the list is empty, everyone's had a turn; reload the list and start again.
		{
			while childUsed.count > 0	// just remove the 0th element until the array is empty
			{
				childList.append(childUsed.remove(at: 0))	// remove from used and add to list
			}
		}
		let randomNumber = Int(arc4random_uniform(UInt32(childList.count)))
		var child:String = ""
		child = childList.remove(at: randomNumber);	// remove the random child from the list so they can't be picked again until everyone has a turn
		childLabel.text = child
		childUsed.append(child);	// "save" the child in the used list
	}
}

