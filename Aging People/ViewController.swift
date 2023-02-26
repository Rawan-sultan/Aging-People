//
//  ViewController.swift
//  Aging People
//
//  Created by 라완 💕 on 21/04/1444 AH.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var mainLabel = ["George", "Betty", "Fran", "Joe", "Helda", "Winifred", "Zed", "Sara", "Jeffy", "Abraham", "Anna", "Melinda" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mainLabel.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let main = mainLabel[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainLabel", for: indexPath) as! MyTableViewCell
        cell.nameLabel.text = main
        cell.detailLabel.text = ("\(Int.random(in: 5...95)) years old")
//        cell.detailTextLabel?.text = ("\(Int.random(in: 5...95)) years old")
            return cell
        }
}
    

