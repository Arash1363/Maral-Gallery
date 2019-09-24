//
//  FavoriteViewController.swift
//  BrideGallery
//
//  Created by Arash on 7/26/19.
//  Copyright © 2019 Arash. All rights reserved.
//

import UIKit

//var NumberImage = ""

class FavoriteViewController: UIViewController {

    @IBOutlet weak var favoriteImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view.backgroundColor = Theme
        let indexSaved = Defaults.integer(forKey: "Favorite")
        let imageName = imageArray[indexSaved]
        let image = UIImage(named: imageName)
        favoriteImage.image = image
    }

    @IBAction func backButton(_ sender: Any) {
    
        if IndexFavoriteImage > 0 {
            IndexFavoriteImage -= 1
            let image = UIImage(named: FavoriteImageArray[IndexFavoriteImage])
            favoriteImage.image = image
        }
    
    }
    
    
    @IBAction func unsaveButton(_ sender: Any) {
    
    FavoriteImageArray.remove(at: IndexFavoriteImage)
    
    }
    
    
    @IBAction func nextButton(_ sender: Any) {
        
        if IndexFavoriteImage < ImageStringNumber - 1 {
            IndexFavoriteImage += 1
            let image = UIImage(named: FavoriteImageArray[IndexFavoriteImage])
            favoriteImage.image = image
        }
    }
}
