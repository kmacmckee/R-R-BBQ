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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
