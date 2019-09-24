//
//  ViewController.swift
//  BrideGallery
//
//  Created by Arash on 7/26/19.
//  Copyright © 2019 Arash. All rights reserved.
//

import UIKit
var ImageStringNumber = 0
var Theme : UIColor = UIColor.white
let Defaults = UserDefaults.standard
var imageArray = ["01" , "02" , "03" , "04" , "05" , "06" , "07" , "08" , "09" , "10"]
var FavoriteImageArray = [String]()
var IndexFavoriteImage = 0

class ViewController: UIViewController {

    @IBOutlet weak var homeImage: UIImageView!
    var indexArray = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view.backgroundColor = Theme
        
    }

    @IBAction func backButton(_ sender: Any) {
        
        if indexArray > 0 {
            indexArray -= 1
            let imageView = UIImage(named: imageArray[indexArray])
            homeImage.image = imageView
        }
    
    }
    
    @IBAction func nextButton(_ sender: Any) {
        
        if indexArray < imageArray.count - 1 {
            indexArray += 1
            let imageView = UIImage(named : imageArray[indexArray])
            homeImage.image = imageView
        }
    
    }
    
    @IBAction func saveButton(_ sender: Any) {
    
    Defaults.set(indexArray, forKey: "Favorite")
    FavoriteImageArray.append(String("0\(indexArray + 1)"))
        
    }
}

