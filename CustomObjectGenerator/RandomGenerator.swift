//
//  RandomGenerator.swift
//  CustomObjectGenerator
//
//  Created by Evgeniy Opryshko on 06/01/2019.
//  Copyright © 2019 Evgeniy Opryshko. All rights reserved.
//

import Foundation

class RandomGenerator {
    
   static func GenerateArray(n: Int) -> [Int] {
        return (0..<n).map{ _ in Int(arc4random_uniform(100) + 1) }
    }
    
}

