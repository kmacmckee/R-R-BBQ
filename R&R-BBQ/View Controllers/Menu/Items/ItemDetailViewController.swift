//
//  ItemDetailViewController.swift
//  R&R-BBQ
//
//  Created by Kobe McKee on 12/18/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

import UIKit

class ItemDetailViewController: UIViewController {

    
    var menuController: MenuController?
    var item: MenuItem?
    
    
    @IBOutlet weak var itemImageView: UIImageView!
    
    @IBOutlet weak var itemNameLabel: UILabel!
    
    @IBOutlet weak var itemInfoLabel: UILabel!
    
    
    @IBOutlet weak var itemOptionsView: UIView!
    
    
    @IBOutlet weak var itemPriceLabel: UILabel!
    
    @IBOutlet weak var addToOrderButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func addToOrderPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
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
