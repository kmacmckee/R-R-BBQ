//
//  MenuViewController.swift
//  R&R-BBQ
//
//  Created by Kobe McKee on 12/9/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
   
    @IBOutlet weak var topBannerView: UIView!
    @IBOutlet weak var menuTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        menuTableView.delegate = self
        menuTableView.dataSource = self
        
        menuTableView.rowHeight = menuTableView.frame.height / 5
        
        print(menuTableView.rowHeight)
    }
    
    let menuSections = ["Plate Combos",
                        "Sandwiches",
                        "Burgers",
                        "Salads",
                        "Wings",
                        "Favorites",
                        "Sides",
                        "Kids",
                        "Drinks",
                        "Deserts",
                        "Daily Specials",
                        "By The Pound"]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuSections.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuSection") as! MenuSectionTableViewCell
        
        let menuItem = menuSections[indexPath.row]
        cell.menuSectionLabel.text = menuItem
        cell.menuSectionImageView.image = UIImage(named: "R&R-Ribs")!
        return cell
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
