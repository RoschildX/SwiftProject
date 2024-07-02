//
//  IGenericService.swift
//  petProject
//
//  Created by Mohamad Farhan Bin Roslan on 28/06/2024.
//

import Foundation

protocol IGenericService {
    associatedtype T
    
    func create(t: T)
    func findBy(name: String) -> T?
    func findAll() -> [T]
}


