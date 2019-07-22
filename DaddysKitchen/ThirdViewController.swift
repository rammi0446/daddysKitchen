//
//  ThirdViewController.swift
//  DaddysKitchen
//
//  Created by MacStudent on 2019-07-22.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   

    @IBOutlet weak var tableViewBookTable: UITableView!
    
    var arrTables : [String] = ["1", "2", "3", "4", "5", "6"]
    var selectedTable : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.tableViewBookTable.delegate = self
        self.tableViewBookTable.dataSource = self
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrTables.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableViewBookTable.dequeueReusableCell(withIdentifier: "myRow", for: indexPath) as! ThirdTableViewCell
        cell.textLabel?.text = arrTables[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let curentCell = tableViewBookTable.cellForRow(at: indexPath) as! ThirdTableViewCell
        print(curentCell.textLabel!.text!)
        self.selectedTable = String(curentCell.textLabel!.text!)
    }
    
    @IBAction func btnPressedBookNow(_ sender: Any) {
        
        if selectedTable.count == 0 {
            let alert = UIAlertController(title: "Daddy's Kitchen", message: "Please select a table first", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        } else {
            let alert = UIAlertController(title: "Daddy's Kitchen", message: "Table Selected Successfully", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
        
        
    }
    
}
