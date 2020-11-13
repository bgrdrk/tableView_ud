//
//  ViewController.swift
//  TableView
//
//  Created by Remis on 2020-11-13.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var slider: UISlider!
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        
        tableView.reloadData()
        
    }
    
    
    let cellContent = ["Vilnius", "Kaunas", "Klaipeda", "Siauliai", "Panevezys", "Alytus"]
    let cellsCount = 50
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return cellContent.count
        return cellsCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = String(Int((slider.value * 10)) + indexPath.row + (indexPath.row - 1))
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

