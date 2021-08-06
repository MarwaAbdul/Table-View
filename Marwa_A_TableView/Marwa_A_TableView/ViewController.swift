//
//  ViewController.swift
//  Marwa_A_TableView
//
//  Created by Student on 8/2/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //Array of cells/sections
    let booksByRobertTheir = ["Storm and Silence", "In the Eye of the Storm", "Silence is Golden", "Silence Breaking", "Hunting for Silence", "Storm of Bells", "New Storm Rising"]


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //Function to run
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)-> Int {
        return booksByRobertTheir.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
let cell = tableView.dequeueReusableCell(withIdentifier: "Pepperjackcell")
        cell?.textLabel?.text = booksByRobertTheir[indexPath.row]
        return cell!
    }
}

