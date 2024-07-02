//
//  FeedingLog.swift
//  petProject
//
//  Created by Mohamad Farhan Bin Roslan on 28/06/2024.
//

import Foundation


struct FeedingLog {
    var pet: Pet
    var food: Food
    var servings: Double
    var totalEnergy: Double {
        return food.energyPerServing * servings
    }
}
