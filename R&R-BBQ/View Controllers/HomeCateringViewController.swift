//
//  HomeCateringViewController.swift
//  R&R-BBQ
//
//  Created by Kobe McKee on 12/6/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

import UIKit

class HomeCateringViewController: UIViewController {

    
    @IBOutlet weak var cateringImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        cateringImageView.addShadow()
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
