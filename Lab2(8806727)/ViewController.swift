//
//  ViewController.swift
//  Lab2(8806727)
//
//  Created by user202391 on 2/3/22.
//

import UIKit

class ViewController: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTextFields()
    }
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var countryField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var outputView: UITextView!
    private func configureTextFields(){
        firstNameField.delegate=self
        lastNameField.delegate=self
        countryField.delegate=self
        ageField.delegate=self
    }
    @IBOutlet weak var messageView: UITextView!
    @IBAction func addBtn(_ sender: Any) {
        messageView.textColor = .black        
        if(firstNameField.text=="" || lastNameField.text=="" || countryField.text=="" || ageField.text==""){
            messageView.text=("All fields are compulsary")
        }                else{
            outputView.text = ("Name:\(firstNameField.text!)"+" \(lastNameField.text!)\n"+"Age:\(ageField.text!)\n"+"Country:\(countryField.text!)")
        }
    }
    
    @IBAction func submitBtn(_ sender: Any) {
        messageView.backgroundColor = .red
        messageView.textColor = .black
        if(firstNameField.text=="" || lastNameField.text=="" || countryField.text=="" || ageField.text==""){
            messageView.text=("All fields are compulsary")
        }
        else{
            messageView.text=("Submitted Successfully")        }
    }
    @IBAction func clearBtn(_ sender: Any) {
        firstNameField.text=""
        lastNameField.text=""
        countryField.text=""
        ageField.text=""
        outputView.text=""
    }
}
extension ViewController:UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
