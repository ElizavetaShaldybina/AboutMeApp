//
//  SettingsViewController.swift
//  AboutMeApp
//
//  Created by Елизавета Шалдыбина on 07.10.2023.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var logOutButton: UIButton!
    
    var helloLabelTwo: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let colorFirst = UIColor(
            red: 69/255,
            green: 50/255,
            blue: 46/255,
            alpha: 1.0).cgColor
        let colorSecond = UIColor(
            red: 121/255,
            green: 85/255,
            blue: 61/255,
            alpha: 1.0).cgColor
        let colorThird = UIColor(
            red: 188/255,
            green: 152/255,
            blue: 126/255,
            alpha: 1.0).cgColor
        let colorFourth = UIColor(
            red: 210/255,
            green: 180/255,
            blue: 140/255,
            alpha: 1.0).cgColor
        
        let gradient = CAGradientLayer()
        gradient.frame = self.view.bounds
        gradient.colors = [
            colorFirst,
            colorSecond,
            colorThird,
            colorFourth]
        gradient.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradient.endPoint = CGPoint(x: 0.0, y: 1.0)
        self.view.layer.insertSublayer(gradient, at: 0)
    }
}
