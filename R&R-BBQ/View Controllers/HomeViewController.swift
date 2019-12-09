//
//  HomeViewController.swift
//  R&R-BBQ
//
//  Created by Kobe McKee on 12/6/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    
    @IBOutlet weak var homeImageView: UIImageView!

    @IBOutlet weak var menuUIView: UIView!
    @IBOutlet weak var cateringUIView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let backgroundImageView = UIImageView(image: UIImage(named: "R&R-whiteBackground"))
        backgroundImageView.frame = view.frame
        backgroundImageView.contentMode = .scaleAspectFill
        view.addSubview(backgroundImageView)
        view.sendSubviewToBack(backgroundImageView)
        
        
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
