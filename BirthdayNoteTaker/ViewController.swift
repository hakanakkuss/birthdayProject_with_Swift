//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Macbook Pro on 25.06.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var BirthdayTextField: UITextField!
    @IBOutlet weak var NameLabel: UILabel!
    @IBOutlet weak var BirthdayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedName=UserDefaults.standard.object(forKey: "Name")
        let storedBirthdayName=UserDefaults.standard.object(forKey: "Birthday")
        
        if let newName=storedName as? String{
            NameLabel.text=newName
        }
        if let newBirthdayName=storedBirthdayName as? String{
            BirthdayLabel.text=newBirthdayName
        }

    
        
    }

    @IBAction func saveButton(_ sender: Any) {

        UserDefaults.standard.set(NameTextField.text!, forKey: "Name")
        UserDefaults.standard.set(BirthdayTextField.text!, forKey: "Birthday")

        
        NameLabel.text="Name: \(NameTextField.text!)"
        BirthdayLabel.text="Birthday: \(BirthdayTextField.text!)"
        
    }
   
    @IBAction func removeButton(_ sender: Any) {
        
        let storedName=UserDefaults.standard.removeObject(forKey: "Name")
        let storedBirthdayName=UserDefaults.standard.removeObject(forKey: "Birthday")
        
        if let newName=storedName as? String{
            UserDefaults.standard.removeObject(forKey: "Name")
        }
        
        
    

    }
    
    
}

