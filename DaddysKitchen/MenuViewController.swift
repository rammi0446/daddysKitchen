//
//  MenuViewController.swift
//  DaddysKitchen
//
//  Created by MacStudent on 2019-07-22.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableviewMenu: UITableView!
    
    let arrImages = ["1", "2", "3"]
    let arrPrice = ["15", "12", "11"]
    let arrName = ["Butter Chicken", "Chicken kebab", "kalmi kebab"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableviewMenu.delegate = self
        self.tableviewMenu.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrImages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableviewMenu.dequeueReusableCell(withIdentifier: "menuRow", for: indexPath) as? MenuTableViewCell
        cell?.imageviewDish.image = UIImage(named: arrImages[indexPath.row])
        cell?.labelName.text = arrName[indexPath.row]
        cell?.labelPrice.text = arrPrice[indexPath.row]
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    

}
