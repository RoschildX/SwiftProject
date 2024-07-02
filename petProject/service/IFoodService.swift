//
//  IFoodService.swift
//  petProject
//
//  Created by Mohamad Farhan Bin Roslan on 28/06/2024.
//

import Foundation

protocol IFoodService: IGenericService {
    func create(t: Food)
    func findBy(name: String) -> Food?
    func findAll() -> [Food]
}
