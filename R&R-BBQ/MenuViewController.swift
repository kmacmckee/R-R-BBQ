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
    var selectedMenuSection: MenuSection?
    let menuController = MenuController()

    override func viewDidLoad() {
        super.viewDidLoad()

        menuTableView.delegate = self
        menuTableView.dataSource = self
        
        menuTableView.rowHeight = menuTableView.frame.height / 5
        
        print(menuTableView.rowHeight)
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuController.menu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuSection") as! MenuSectionTableViewCell
        
        let menuSection = menuController.menu[indexPath.row]
        cell.menuSectionLabel.text = menuSection.name
        cell.menuSectionImageView.image = UIImage(named: "R&R-Ribs")!
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let menuSection = menuController.menu[indexPath.row]
        selectedMenuSection = menuSection
        
        self.performSegue(withIdentifier: "toMenuItems", sender: self)
    }
    
    

    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toMenuItems" {
            let destinationVC = segue.destination as! MenuItemsTableViewController
            destinationVC.menuSection = selectedMenuSection
        }
        
    }
    

}
