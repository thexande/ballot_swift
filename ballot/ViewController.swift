//
//  ViewController.swift
//  ballot
//
//  Created by Alexander Murphy on 9/14/16.
//  Copyright © 2016 Alexander Murphy. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase

class ViewController: UIViewController {
    let rootRef = FIRDatabase.database().reference()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    // horizontal slider
    
    // create new poll
    func createPoll() {
        rootRef.child("posts").childByAutoId().setValue("woot")
    }
    // create poll button
    @IBAction func createPollButton(sender: AnyObject) {
        print("create poll view")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

