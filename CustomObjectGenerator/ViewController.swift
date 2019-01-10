//
//  ViewController.swift
//  CustomObjectGenerator
//
//  Created by Evgeniy Opryshko on 06/01/2019.
//  Copyright © 2019 Evgeniy Opryshko. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        if let contex = (UIApplication.shared.delegate as? AppDelegate)?.CoreDataStack.persistentContainer.viewContext {
            //Create Model A
            let car = Car(context: contex)
            car.model = "BMW"
            //Create Model B1
            let detail1 = Detail(context: contex)
            detail1.detailName = "Wheel"
            //Create Model B2
            let detail2 = Detail(context: contex)
            detail2.detailName = "Steering wheel"
            
            
            //Save
            do {
                try contex.save()
                print("Done")
            } catch let error as NSError {
                print("Failed to save data \(error), \(error.userInfo)")
            }
            
            //Print
            let fetchRequest: NSFetchRequest<Car> = Car.fetchRequest()
            let details = try? contex.fetch(fetchRequest)
            print(details!)
        }
        
        
        
        
        
    }


}

