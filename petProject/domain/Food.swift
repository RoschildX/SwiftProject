//  Food.swift
//  petProject
//
//  Created by Mohamad Farhan Bin Roslan on 28/06/2024.
//

import Foundation

struct Food: Equatable {
    var name: String
    var energyPerServing: Double
    
    static func == (test: Food, actual: Food) -> Bool {
        return test.name == actual.name
    }
}

