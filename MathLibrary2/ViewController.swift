//
//  ViewController.swift
//  MathLibrary2
//
//  Created by Annemarie Ketola on 12/12/14.
//  Copyright (c) 2014 Up Early, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //book variables
    @IBOutlet weak var book0Label: UILabel!
    @IBOutlet weak var book1Label: UILabel!
    @IBOutlet weak var book2Label: UILabel!
    @IBOutlet weak var book3Label: UILabel!
    @IBOutlet weak var book4Label: UILabel!
    @IBOutlet weak var book5Label: UILabel!

    // add new book variable
    @IBOutlet weak var addNewBookTextField: UITextField!
    
    var bookTitle: String?   // <- sets up the var data as a string
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
                addNewBookTextField.delegate = self  // <- no idea what this does, called the delegate thing (?)
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
        saveLogic()                     // <- used method to save the logic you typed
        dismissKeyboard()               // <- used method to makes the keyboard go down
        println("Data: \(bookTitle) - from button")        // <- prints the data out
    }
    
    func saveLogic() {  // method that saves the data you type into a variable called bookTitle
        bookTitle = addNewBookTextField.text
        println("Data: \(bookTitle) - from saveLogic")
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool { // <- method that hooks the keyboard going away and saving the data with the return button on the keyboard
        saveLogic()
        dismissKeyboard()
        return true
    }
    
    func dismissKeyboard() {    // <- method that makes the keyboard go away
        view.endEditing(false)
    }

}

