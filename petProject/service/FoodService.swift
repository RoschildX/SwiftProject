//
//  FoodService.swift
//  petProject
//
//  Created by Mohamad Farhan Bin Roslan on 28/06/2024.
//

import Foundation

class FoodService: IFoodService {
    typealias T = Food
    
    private var foods: [Food] = []
    
    func create(t: Food) {
        foods.append(t)
    }
    
    func findBy(name: String) -> Food? {
        for food in foods {
            if name == food.name {
                return food
            }
        }
        return nil
    }
    
    func findAll() -> [Food] {
        return foods
    }
}
