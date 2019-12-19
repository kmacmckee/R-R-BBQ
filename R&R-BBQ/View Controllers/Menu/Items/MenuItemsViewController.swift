//
//  MenuItemsViewController.swift
//  R&R-BBQ
//
//  Created by Kobe McKee on 12/12/19.
//  Copyright © 2019 Kobe McKee. All rights reserved.
//

import UIKit

class MenuItemsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var menuController: MenuController?
    var menuSection: MenuSection?
    var selectedItem: MenuItem?
    
    @IBOutlet weak var menuItemsTableView: UITableView!
    @IBOutlet weak var menuSectionImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        menuItemsTableView.delegate = self
        menuItemsTableView.dataSource = self
        
        menuItemsTableView.rowHeight = menuItemsTableView.bounds.height / 5
        
        guard let section = menuSection else { return }
        menuSectionImageView.image = section.image != nil ? section.image : UIImage(named: "R&R-Featured")
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let section = menuSection else { return 0 }
        return section.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MenuItem", for: indexPath) as? MenuItemTableViewCell,
            let section = menuSection else { return UITableViewCell() }
        
        let item = section.items[indexPath.row]
        
        cell.menuItemImageView.image = UIImage(named: "R&R-Featured")
        cell.menuItemLabel.text = item.name

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let section = menuSection else { return }
        self.selectedItem = section.items[indexPath.row]
        
        self.performSegue(withIdentifier: "toItemDetail", sender: self)
        
    }
    
    
    // MARK: - Navigation


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toItemDetail" {
            guard let destinationVC = segue.destination as? ItemDetailViewController else { return }
            destinationVC.menuController = self.menuController
            destinationVC.item = self.selectedItem
        }
    }

}
