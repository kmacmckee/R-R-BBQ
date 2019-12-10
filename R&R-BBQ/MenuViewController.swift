//
//  MenuViewController.swift
//  R&R-BBQ
//
//  Created by Kobe McKee on 12/9/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {

    // Buttons
    @IBOutlet weak var platesButton: UIButton!
    @IBOutlet weak var sandwichesButton: UIButton!
    @IBOutlet weak var burgersButton: UIButton!
    @IBOutlet weak var saladsButton: UIButton!
    @IBOutlet weak var wingsButton: UIButton!
    @IBOutlet weak var favoritesButton: UIButton!
    @IBOutlet weak var sidesButton: UIButton!
    @IBOutlet weak var kidsButton: UIButton!
    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let backgroundImageView = UIImageView(image: UIImage(named: "R&R-WhiteBackground"))
        backgroundImageView.frame = view.frame
        backgroundImageView.contentMode = .scaleAspectFill
        view.addSubview(backgroundImageView)
        view.sendSubviewToBack(backgroundImageView)
        
        styleButtons()
    }
    

    
    
    
    
    func styleButtons() {
        let buttons = [platesButton, sandwichesButton, burgersButton, saladsButton, wingsButton, favoritesButton, sidesButton, kidsButton]
        
        for button in buttons {
            button!.layer.cornerRadius = 12
            button!.clipsToBounds = true
            
            button!.layer.borderWidth = 2
            button!.layer.borderColor = UIColor.black.cgColor
            
            button!.backgroundColor = UIColor.lightGray
            
        }
        
    }
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
