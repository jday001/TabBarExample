//
//  FirstViewController.swift
//  TabBarExample
//
//  Created by Jeff Day on 1/27/15.
//  Copyright (c) 2015 JDay Apps, LLC. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var textView: UITextView!
    
    @IBAction func backgroundTapped(sender: AnyObject) {
        self.textView.resignFirstResponder()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.textView.delegate = self
    }
    
    override func viewDidAppear(animated: Bool) {
        self.textView.selectedTextRange = nil
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textViewShouldEndEditing(textView: UITextView) -> Bool {
        return true
    }


}

