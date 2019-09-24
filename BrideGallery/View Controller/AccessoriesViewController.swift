//
//  AccessoriesViewController.swift
//  BrideGallery
//
//  Created by Arash on 7/27/19.
//  Copyright © 2019 Arash. All rights reserved.
//

import UIKit

class AccessoriesViewController: UIViewController {

    //MARK : Peroperty
    
    let imageTajArray = [ "Taj03" ,"Taj04" ,"Taj05" ,"Taj06"]
    let imageTourArray = ["Tour01" ,"Tour02" ,"Tour03" ,"Tour04" ,"Tour05" ,"Tour06"]
    let imageShenelArray = ["Shenel01" ,"Shenel02" ,"Shenel03"]
    var tajIndex = 0
    var tourIndex = 0
    var shenelIndex = 0
    
    @IBOutlet weak var imageTaj: UIImageView!
    @IBOutlet weak var imageTour: UIImageView!
    @IBOutlet weak var imageShenel: UIImageView!
    
 
    override func viewDidLoad() {
        
        super.viewDidLoad()

    }
    //MARK : Actions
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view.backgroundColor = Theme
    }
    
    
    //Action For All Back To Accessories Button
    
    @IBAction func backButton(_ sender: Any) {
    
        dismiss(animated: true, completion: nil)
    
    }
    
    //Acton For Taj
    
    @IBAction func backTajButton(_ sender: Any) {
        if tajIndex > 0 {
            tajIndex -= 1
            let imageName = imageTajArray[tajIndex]
            let image = UIImage(named: imageName)
            imageTaj.image = image
        }
    
    }
    
    @IBAction func saveTajButton(_ sender: Any) {
    }
    
    @IBAction func nextTajButton(_ sender: Any) {
        if tajIndex < imageTajArray.count - 1 {
            tajIndex += 1
            let imageName = imageTajArray[tajIndex]
            let image = UIImage(named: imageName)
            imageTaj.image = image
        }
    
    }
    
    //Action For Tour
    
    @IBAction func backTourButton(_ sender: Any) {
        if tourIndex > 0 {
            tourIndex -= 1
            let imageName = imageTourArray[tourIndex]
            let image = UIImage(named: imageName)
            imageTour.image = image
        }
    
    }
    
    @IBAction func saveTourButton(_ sender: Any) {
    }
    
    @IBAction func nextTourButton(_ sender: Any) {
        if tourIndex < imageTourArray.count - 1 {
            tourIndex += 1
            let imageName = imageTourArray[tourIndex]
            let image = UIImage(named: imageName)
            imageTour.image = image
        }
    
    
    }
    

    //Action For Shenel
    
    @IBAction func backShenelButton(_ sender: Any) {
        if shenelIndex > 0 {
            shenelIndex -= 1
            let imageName = imageShenelArray[shenelIndex]
            let image = UIImage(named: imageName)
            imageShenel.image = image
        }
    
    
    
    }
    
    @IBAction func saveShenelButton(_ sender: Any) {
    }
    
    @IBAction func nextShenelButton(_ sender: Any) {
        if shenelIndex < imageShenelArray.count - 1 {
            shenelIndex += 1
            let imageName = imageShenelArray[shenelIndex]
            let image = UIImage(named: imageName)
            imageShenel.image = image
        }
    
    }
    
    
}
