//
//  FoodServiceTest.swift
//  petProjectTests
//
//  Created by Mohamad Farhan Bin Roslan on 28/06/2024.
//

import XCTest
@testable import petProject

final class FoodServiceTest: XCTestCase {

    var foodService : IFoodService!
    let food = Food(name: "Iron", energyPerServing: 1.2)
    let food1 = Food(name: "Whiscas", energyPerServing: 1.5)
    let food2 = Food(name: "Pedigree", energyPerServing: 1.5)
    
    override func setUpWithError() throws {
        foodService = FoodService()
        foodService.create(t: food1)
        foodService.create(t: food2)
        
    }
    
    func testCreate() {
        foodService.create(t: food)
        let result = foodService.findAll()
        
        XCTAssertEqual(result.count, 3)
        XCTAssertEqual(result[2].name, food.name)
    }
    
    func testFindBy() {
        let result = foodService.findBy(name: "Whiscas")
        XCTAssertEqual(result, food1)
        
    }

    func testFindAll() {
        let result = foodService.findAll()
        XCTAssertEqual(result.count, 2)
    }
    
}
