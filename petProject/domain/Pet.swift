//
//  Pet.swift
//  petProject
//
//  Created by Mohamad Farhan Bin Roslan on 28/06/2024.
//

import Foundation

struct Pet: Equatable  {
    var name: String
    var species: String?
    
    static func == (test: Pet, actual: Pet) -> Bool {
        return test.name == actual.name
    }
}
