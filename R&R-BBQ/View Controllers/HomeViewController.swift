//
//  HomeViewController.swift
//  R&R-BBQ
//
//  Created by Kobe McKee on 12/6/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    
    @IBOutlet weak var homeImageLabel: UILabel!
    @IBOutlet weak var homeImageView: UIImageView!

    @IBOutlet weak var menuUIView: UIView!
    @IBOutlet weak var cateringUIView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let backgroundImageView = UIImageView(image: UIImage(named: "R&R-WhiteBackground"))
        backgroundImageView.frame = view.frame
        backgroundImageView.contentMode = .scaleAspectFill
        view.addSubview(backgroundImageView)
        view.sendSubviewToBack(backgroundImageView)
        
        
        homeImageLabel.layer.shadowColor = UIColor.black.cgColor
        homeImageLabel.layer.shadowRadius = 8
        homeImageLabel.layer.shadowOpacity = 0.6
        homeImageLabel.layer.shadowOffset = CGSize(width: 4, height: 4)
        homeImageLabel.layer.masksToBounds = false
        
        
        let iconImageView = UIImageView(image: UIImage(named: "R&R-Icon"))
        iconImageView.contentMode = .scaleAspectFit
        
        self.navigationItem.titleView = iconImageView
        
        
        setShadow(view: menuUIView)
        setShadow(view: cateringUIView)

    }
    
    func setShadow(view: UIView) {
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOffset = CGSize(width: 0, height: 0)
        view.layer.shadowOpacity = 0.6
        view.layer.shadowRadius = 8
        view.clipsToBounds = false
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
