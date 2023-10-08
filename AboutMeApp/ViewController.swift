//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Елизавета Шалдыбина on 06.10.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var mainButton: UIButton!
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainButton.layer.cornerRadius = 7
    }

    override func prepare(
        for segue: UIStoryboardSegue,
        sender: Any?) {
        guard let settingsVC =
                segue.destination as? SettingsViewController
            else { return }
        settingsVC.helloLabelTwo =
            "Welcome, \(String(describing: userNameTextField.text))"
    }
    
    override func touchesBegan(
        _ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        self.view.endEditing(true)
    }
    
    override func shouldPerformSegue (
        withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == "User",
              passwordTextField.text == "Password"
        else {
            showAlertForTextsField(
                with: "Invalid login or password",
                and: "Please, enter correct login and password")
            return false
        }
        return true
    }
    
    @IBAction func buttonPressed() {
    }
    
    @IBAction func forgotUserNameButtonPressed() {
       showAlertForUserName(
        with: "Oops!",
        and: "Your name is User 😉")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlertForPassword(
            with: "Oops!",
            and: "Your password is Password 😉")
    }
    
    @IBAction func unwind(
        for segue: UIStoryboardSegue) {
        self.userNameTextField.text = ""
        self.passwordTextField.text = ""
    }
}

extension ViewController {
    private func showAlertForTextsField(
        with title: String,
        and message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert)
        let okAction = UIAlertAction(
            title: "OK",
            style: .default) { _ in
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
    
    private func showAlertForUserName(
        with title: String,
        and message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert)
        let okAction = UIAlertAction(
            title: "OK",
            style: .default)
        
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
    
    private func showAlertForPassword(
        with title: String,
        and message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert)
        let okAction = UIAlertAction(
            title: "OK",
            style: .default)
        
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
}
