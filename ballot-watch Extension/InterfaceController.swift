//
//  InterfaceController.swift
//  ballot-watch Extension
//
//  Created by Alexander Murphy on 9/14/16.
//  Copyright © 2016 Alexander Murphy. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    let textChoices: [String] = ["Yes","No","Maybe","I'll think about it","Just Order Pizza", "Out on a run, later dude", "Seriously, just order Pizza"]
    // my test button
    @IBOutlet var myLabel: WKInterfaceLabel!
    
    
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
    }
//    my test aciton
    @IBAction func textInputPressed() {
        presentTextInputController(withSuggestions: textChoices,
                                                  allowedInputMode: WKTextInputMode.plain,
                                                  completion: {(results) -> Void in })

    }
    

}
