//
//  SettingsViewController.swift
//  BrideGallery
//
//  Created by Arash on 7/27/19.
//  Copyright © 2019 Arash. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var settingsLabel: UILabel!
    @IBOutlet var labelSettings: [UILabel]!
    @IBOutlet weak var borderValue: UISwitch!
    @IBOutlet weak var segmentValue: UISegmentedControl!
    @IBOutlet weak var stepperSet: UIStepper!
    @IBOutlet weak var numberOfImage: UILabel!
    
    
    

    override func viewDidLoad(){
    
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func themeChange(_ sender: Any) {
        
        let valueSegmented = segmentValue.selectedSegmentIndex
        
        if valueSegmented == 0 {
            Theme = UIColor.white
            for label in labelSettings {
                label.textColor = UIColor.black
            }        }
        else
        {
            Theme = UIColor.darkGray
            for label in labelSettings {
                label.textColor = UIColor.white
            }
        }
        
        view.backgroundColor = Theme
    
    }
    
    @IBAction func borderSwip(_ sender: Any) {
    }
    
    
    @IBAction func aboutButton(_ sender: Any) {
    }
    
    @IBAction func changeNumberSave(_ sender: UIStepper) {
    
        ImageStringNumber  = Int(stepperSet.value)
        numberOfImage.text = "\(ImageStringNumber)"
    }
    
    @IBAction func webSiteClick(_ sender: Any) {
        if let url = URL(string: "https://www.maralmezonkaraj.com"),
            UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:])
        }
        
    }
    
    
    
    
}
