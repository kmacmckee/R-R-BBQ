//
//  HomeMenuViewController.swift
//  R&R-BBQ
//
//  Created by Kobe McKee on 12/6/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

import UIKit

class HomeMenuViewController: UIViewController {

    
    @IBOutlet weak var menuImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        styleImageView()
    }
    
    func styleImageView() {
        menuImageView.image = UIImage(named: "R&R-Featured")
        menuImageView.layer.contentsGravity = .resizeAspectFill
        menuImageView.layer.cornerRadius = 10
        menuImageView.clipsToBounds = true
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
