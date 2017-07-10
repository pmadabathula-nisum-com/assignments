//
//  ViewController.swift
//  TableUITest
//
//  Created by nisum on 7/10/17.
//  Copyright © 2017 Praveen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var table: UITableView!
    var rowCount = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        rowCount = 10
        table.reloadData()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func reloadTapped(_ sender: Any) {
        rowCount = 10
        table.reloadData()
    }
}
extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return rowCount
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.value1, reuseIdentifier: "cell")
        }
        cell?.textLabel?.text = "hello "
        return cell!
    }
}


