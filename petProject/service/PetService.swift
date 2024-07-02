//
//  PetService.swift
//  petProject
//
//  Created by Mohamad Farhan Bin Roslan on 28/06/2024.
//

import Foundation

class PetService: IPetService {
    typealias T = Pet
    
    private var pets: [Pet] = []
    
    func create(t: Pet) {
        pets.append(t)
    }
    
    func findBy(name: String) -> Pet? {
        for pet in pets {
            if name == pet.name {
                return pet
            }
        }
        return nil
    }
    
    func findAll() -> [Pet] {
        return pets
    }
}

