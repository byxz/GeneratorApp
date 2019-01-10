//
//  TableViewController.swift
//  CustomObjectGenerator
//
//  Created by Evgeniy Opryshko on 06/01/2019.
//  Copyright © 2019 Evgeniy Opryshko. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let amountOfNumbers = 100000
    var arrayNumbers = [Int]()
    
    //MARK: UIViewController lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaultQueue = DispatchQueue.global()
        
        defaultQueue.sync { 
            self.arrayNumbers = RandomGenerator.GenerateArray(n: self.amountOfNumbers)
        }
        
       
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayNumbers.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = "\(arrayNumbers[indexPath.row])"
        
        return cell
    }

    
}
