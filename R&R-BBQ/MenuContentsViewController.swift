//
//  MenuContentsViewController.swift
//  R&R-BBQ
//
//  Created by Kobe McKee on 12/9/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

import UIKit

class MenuContentsViewController: UIViewController {

    
    @IBOutlet weak var menuItemImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        menuItemImageView.image = UIImage(named: "R&R-PlateCombo")
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
