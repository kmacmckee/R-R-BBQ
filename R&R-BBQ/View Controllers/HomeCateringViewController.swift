//
//  HomeCateringViewController.swift
//  R&R-BBQ
//
//  Created by Kobe McKee on 12/6/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

import UIKit

class HomeCateringViewController: UIViewController {


    @IBOutlet weak var cateringView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        styleImage()
    }
    
    func styleImage() {
        guard let outerView = cateringView else { return }
        outerView.clipsToBounds = false
        outerView.layer.shadowColor = UIColor.black.cgColor
        outerView.layer.shadowOpacity = 1
        outerView.layer.shadowOffset = CGSize.zero
        outerView.layer.shadowRadius = 10
        outerView.layer.shadowPath = UIBezierPath(roundedRect: outerView.bounds, cornerRadius: 10).cgPath
        
        let myImage = UIImageView(frame: outerView.bounds)
        myImage.image = UIImage(named: "R&R-Featured")
        myImage.layer.contentsGravity = .resizeAspectFill
        myImage.layer.cornerRadius = 10
        myImage.clipsToBounds = true
        
        outerView.addSubview(myImage)
        
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
