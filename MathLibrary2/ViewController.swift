//
//  ViewController.swift
//  MathLibrary2
//
//  Created by Annemarie Ketola on 12/12/14.
//  Copyright (c) 2014 Up Early, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //book variables
    
    @IBOutlet weak var book0Label: UILabel!
    @IBOutlet weak var book1Label: UILabel!
    @IBOutlet weak var book2Label: UILabel!
    @IBOutlet weak var book3Label: UILabel!
    @IBOutlet weak var book4Label: UILabel!
    @IBOutlet weak var book5Label: UILabel!

    // add new book variable
    @IBOutlet weak var addNewBookTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // book buttons
    @IBAction func book0ButtonPressed(sender: AnyObject) {
    }
    @IBAction func book1ButtonPressed(sender: AnyObject) {
    }
    @IBAction func book2ButtonPressed(sender: AnyObject) {
    }
    @IBAction func book3ButtonPressed(sender: AnyObject) {
    }
    @IBAction func book4ButtonPressed(sender: AnyObject) {
    }
    @IBAction func book5ButtonPressed(sender: AnyObject) {
    }
    
    // Add new book button
    @IBAction func addBookButtonPressed(sender: AnyObject) {
    }

}

