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
        
                addNewBookTextField.delegate = self  // <- no idea what this does, calls the delegate thing (?)
        var allBooks = ["Calculus", "Biology", "Art", "Physics", "History", "?"]
        
// Loops through the array and puts them in order of the array on the book UILabels
//        for book\(i)Label.text, i = 1...5 {
//            book\(i)Label.text = "\(allBooks[i])"
//        }
        
        book0Label.text = "\(allBooks[0])"
        book1Label.text = "\(allBooks[1])"
        book2Label.text = "\(allBooks[2])"
        book3Label.text = "\(allBooks[3])"
        book4Label.text = "\(allBooks[4])"
        book5Label.text = "\(allBooks[5])"

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // book buttons // <- checks in/out a book
    @IBAction func book0ButtonPressed(sender: AnyObject) {
        if book0Label.text == shelf1[0] && book0Label.text != "?" {
        book0Label.text = "checked out"
    } else {
        book0Label.text = "\(shelf1[0])"
        }
    }
    @IBAction func book1ButtonPressed(sender: AnyObject) {
        if book1Label.text == shelf1[1] && book1Label.text != "?" {
            book1Label.text = "checked out"
        } else {
            book1Label.text = "\(shelf1[1])"
        }
    }
    @IBAction func book2ButtonPressed(sender: AnyObject) {
        if book2Label.text == shelf2[0] && book2Label.text != "?" {
            book2Label.text = "checked out"
        } else {
            book2Label.text = "\(shelf2[0])"
            println(shelf2[0])
        }
    }
    @IBAction func book3ButtonPressed(sender: AnyObject) {
        if book3Label.text == shelf2[1] && book3Label.text != "?" {
            book3Label.text = "checked out"
        } else {
            book3Label.text = "\(shelf2[1])"
        }
    }
    @IBAction func book4ButtonPressed(sender: AnyObject) {
        if book4Label.text == shelf3[0] && book4Label.text != "?" {
            book4Label.text = "checked out"
        } else {
            book4Label.text = "\(shelf3[0])"
        }
    }
    @IBAction func book5ButtonPressed(sender: AnyObject) {
        if book5Label.text == "?" {
            book5Label.text == "?"
        } else if book5Label.text == shelf3[1] {
            book5Label.text = "checked out"
        } else {
            book5Label.text = "\(shelf3[1])"
        }
    }
    
    // Add new book button
    @IBAction func addBookButtonPressed(sender: AnyObject) {
        if addNewBookTextField.text != "" {
        saveLogic()                                          // <- used method to save the logic you typed
        dismissKeyboard()                                    // <- used method to makes the keyboard go down
        if book5Label.text == "?" {
            book5Label.text = "\(shelf3[1])"                      // <- adds the book title to the UI
        } else if book0Label.text == "?" {
            book0Label.text = "\(shelf1[0])"
        } else if book1Label.text == "?" {
            book1Label.text = "\(shelf1[1])"
        } else if book2Label.text == "?" {
            book2Label.text = "\(shelf2[0])"
        } else if book3Label.text == "?" {
            book3Label.text = "\(shelf2[1])"
        } else if book4Label.text == "?" {
            book4Label.text = "\(shelf3[0])"
        } else {
            addNewBookTextField.text = "Library is Full"     // <- tells the user that the library is full
        }
        
    }
    }
    
    
    // these button lets you remove a book from the library, which is different that checking it out
    @IBAction func removeBookButtonPressed(sender: AnyObject) {
        println("book removed")
        
        if addNewBookTextField.text == book0Label.text {
            book0Label.text = "?"
            shelf1.removeAtIndex(0)
            shelf1.insert("?", atIndex: 0)
            allBooks2.removeAtIndex(0)
            allBooks2.insert("?", atIndex: 0)
            println("Shelf1: \(shelf1)")
        } else if addNewBookTextField.text == book1Label.text {
            book1Label.text = "?"
            shelf1.removeAtIndex(1)
            shelf1.insert("?", atIndex: 1)
            allBooks2.removeAtIndex(1)
            allBooks2.insert("?", atIndex: 1)
            println("Shelf1: \(shelf1)")
        } else if addNewBookTextField.text == book2Label.text {
            book2Label.text = "?"
            shelf2.removeAtIndex(0)
            shelf2.insert("?", atIndex: 0)
            allBooks2.removeAtIndex(2)
            allBooks2.insert("?", atIndex: 2)
            println("Shelf2: \(shelf2)")
        } else if addNewBookTextField.text == book3Label.text {
            book3Label.text = "?"
            shelf2.removeAtIndex(1)
            shelf2.insert("?", atIndex: 1)
            allBooks2.removeAtIndex(3)
            allBooks2.insert("?", atIndex: 3)
            println("Shelf2: \(shelf2)")
        } else if addNewBookTextField.text == book4Label.text {
            book4Label.text = "?"
            shelf3.removeAtIndex(0)
            shelf3.insert("?", atIndex: 0)
            allBooks2.removeAtIndex(4)
            allBooks2.insert("?", atIndex: 4)
            println("Shelf3: \(shelf3)")
        } else if addNewBookTextField.text == book5Label.text {
            book5Label.text = "?"
            shelf3.removeAtIndex(1)
            shelf3.insert("?", atIndex: 1)
            allBooks2.removeAtIndex(5)
            allBooks2.insert("?", atIndex: 5)
            println("Shelf3: \(shelf3)")
        } else {
            addNewBookTextField.text = "Book not found"
        }
         println("allBooks2: \(allBooks2)")
    }
    
    class book {
        // A book has the property of having a title
        var title: String = ""
        
        // It has a method
        init(title: String) {
            self.title = title
            //        return title
            //        println(title)
        }
    }
    
    // defined 6 books classes to set up the library
    var book0 = book(title: "Calculus")
    var book1 = book(title: "Biology")
    var book2 = book(title: "Art")
    var book3 = book(title: "Physics")
    var book4 = book(title: "History")
//    var book5 = book(title: "Economics")
    
    // since I can't get the shelf class to work, this code adds the books to shelf arrays
    var shelf1 = ["Calculus", "Biology"]
    var shelf2 = ["Art", "Physics"]
    var shelf3 = ["History", "?"]
    
//    allBooks2 = shelf1 + shelf2 + shelf3  // <- no idea why I can't add the arrays together to make a third array
    var allBooks2 = ["Calculus", "Biology", "Art", "Physics", "History", "?"]

//    I couldn't get things to work as classes in the way I thought I could, so I had to do it another way, but these were sort of the ideas what I wanted to do with the books when they are in a calss.
//    // Puts the book titles in a shelf
//    var shelf1 = [book0.title.self, book1.title.self]
//    var shelf2 = [book2.title, book3.title]
//    var shelf3 = [book4.title, book5.title]
//    
//    var allBooks = []
//    
//    func enshelf() {
//        book0Label.text = "\(book.title)"
//    }
//    
//    func unshelf(){
//        book0Label.text = "Checked Out"
//    }
    
    func saveLogic() {  // method that saves the data in both the shelf arrays and the allBook2 array
        var bookTitle: String
        bookTitle = addNewBookTextField.text
        if book5Label.text == "?" || book0Label.text == "?" || book1Label.text == "?" || book2Label.text == "?" || book3Label.text == "?" || book4Label.text == "?" {                         // <- only adds the book if there is room in the library
        var book5 = book(title: bookTitle)                 // <- makes the title into a book class
            if book5Label.text == "?" {
        shelf3.removeAtIndex(1)                             // <- removes the "?" book from the shelf3 array
        shelf3.insert("\(bookTitle)", atIndex: 1)
//        shelf3 += ["\(bookTitle)"]                                   // <- adds the book to the shelf3 array
        allBooks2.removeAtIndex(5)                               // <- removes the book from the allBooks2 array
        allBooks2.insert("\(bookTitle)", atIndex: 5)
//        allBooks2 += ["\(bookTitle)"]                             // <- adds the book title to the list of allBooks2 array
        println("Data: \(bookTitle) - from saveLogic")
            println("Shelf3: \(shelf3)")
            println("allBooks2: \(allBooks2)")
                
            } else if book0Label.text == "?" {
                shelf1.removeAtIndex(0)                             // <- removes the "?" book from the shelf1 array
                shelf1.insert("\(bookTitle)", atIndex: 0)
//                shelf1 += ["\(bookTitle)"]                                   // <- adds the book to the shelf1 array
                allBooks2.removeAtIndex(0)                               // <- removes the "?" from the allBooks2 array
                allBooks2.insert("\(bookTitle)", atIndex: 0)
//                allBooks2 += ["\(bookTitle)"]                             // <- adds the book title to the list of allBooks2 array
                println("Data: \(bookTitle) - from saveLogic")
                println("Shelf1: \(shelf1)")
                println("allBooks2: \(allBooks2)")
                
            } else if book1Label.text == "?" {
                shelf1.removeAtIndex(1)                             // <- removes the "?" book from the shelf1 array
                shelf1.insert("\(bookTitle)", atIndex: 1)
//                shelf1 += ["\(bookTitle)"]                                   // <- adds the book to the shelf1 array
                allBooks2.removeAtIndex(1)                               // <- removes the "?" from the allBooks2 array
                allBooks2.insert("\(bookTitle)", atIndex: 1)
//                allBooks2 += ["\(bookTitle)"]                             // <- adds the book title to the list of allBooks2 array
                println("Data: \(bookTitle) - from saveLogic")
                println("Shelf1: \(shelf1)")
                println("allBooks2: \(allBooks2)")
            
            } else if book2Label.text == "?" {
                shelf2.removeAtIndex(0)                             // <- removes the "?" book from the shelf1 array
                shelf2.insert("\(bookTitle)", atIndex: 0)
//                shelf2 += ["\(bookTitle)"]                                   // <- adds the book to the shelf1 array
                allBooks2.removeAtIndex(2)                               // <- removes the "?" from the allBooks2 array
                allBooks2.insert("\(bookTitle)", atIndex: 2)
//                allBooks2 += ["\(bookTitle)"]                             // <- adds the book title to the list of allBooks2 array
                println("Data: \(bookTitle) - from saveLogic")
                println("Shelf2: \(shelf2)")
                println("allBooks2: \(allBooks2)")
            
            } else if book3Label.text == "?" {
                shelf2.removeAtIndex(1)                             // <- removes the "?" book from the shelf1 array
                shelf2.insert("\(bookTitle)", atIndex: 1)
                shelf2 += ["\(bookTitle)"]                                   // <- adds the book to the shelf1 array
                allBooks2.removeAtIndex(3)                               // <- removes the "?" from the allBooks2 array
                allBooks2.insert("\(bookTitle)", atIndex: 3)
//                allBooks2 += ["\(bookTitle)"]                             // <- adds the book title to the list of allBooks2 array
                println("Data: \(bookTitle) - from saveLogic")
                println("Shelf2: \(shelf2)")
                println("allBooks2: \(allBooks2)")
            
            } else if book4Label.text == "?" {
                shelf3.removeAtIndex(0)                             // <- removes the "?" book from the shelf1 array
                shelf3.insert("\(bookTitle)", atIndex: 0)
//                shelf3 += ["\(bookTitle)"]                                   // <- adds the book to the shelf1 array
                allBooks2.removeAtIndex(4)                               // <- removes the "?" from the allBooks2 array
                allBooks2.insert("\(bookTitle)", atIndex: 4)
//                allBooks2 += ["\(bookTitle)"]                             // <- adds the book title to the list of allBooks2 array
                println("Data: \(bookTitle) - from saveLogic")
                println("Shelf3: \(shelf3)")
                println("allBooks2: \(allBooks2)")
            }
        } else {
            println("library is full")
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool { // <- method that hooks the keyboard going away with the return button on the keyboard
        dismissKeyboard()
        return true
    } // - not sure why sometimes the "suggested" words in the keyboard, dispite being the exact book title do not work all the time when adding/removing. So I disabled that function
    
    func dismissKeyboard() {                                // <- method that makes the keyboard go away
        view.endEditing(false)
    }

}

