//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Marcus Vinicius Galdino Medeiros on 08/12/19.
//  Copyright © 2019 Marcus Vinicius Galdino Medeiros. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var simpsonArray = [Simpson]()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        let homer = Simpson(name: "Homer Simpson", job: "Nuclear Safety", image: UIImage(named: "homersimpson")!)
        let marge = Simpson(name: "Marge Simpson", job: "Housewife", image: UIImage(named: "margesimpson")!)
        let bart = Simpson(name: "Bart Simpson", job: "Student", image: UIImage(named: "bartsimpson")!)
        let lisa = Simpson(name: "Lisa Simpson", job: "Student", image: UIImage(named: "lisasimpson")!)
        let maggie = Simpson(name: "Maggie Simpson", job: "Baby", image: UIImage(named: "maggiesimpson")!)
        
        simpsonArray = [homer, marge, bart, lisa, maggie]

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpsonArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = simpsonArray[indexPath.row].name
        return cell
    }

}

