//
//  FeedingLogServiceTest.swift
//  petProjectTests
//
//  Created by Mohamad Farhan Bin Roslan on 28/06/2024.
//

import XCTest
@testable import petProject

final class FeedingLogServiceTest: XCTestCase {
    
    var feedingLogService: IFeedingLogService!
    let pet1 = Pet(name: "Rufus", species: "dog")
    let food1 = Food(name: "Pedigree", energyPerServing: 2)
    
    override func setUpWithError() throws {
        feedingLogService = FeedingLogService()
        let feedingLog1 = FeedingLog(pet: pet1, food: food1, servings: 1.5)
        feedingLogService.create(log: feedingLog1)
    }
    
    func testCreate() {
        let feedingLog = FeedingLog(pet: pet1, food: food1, servings: 1.5)
        feedingLogService.create(log: feedingLog)
        
        let result = feedingLogService.findAll()
        XCTAssertEqual(result.count, 2)
        
    }
    
    func testFindBy() {
        let result = feedingLogService.findBy(pet: pet1)
        XCTAssertEqual(result[0].pet, pet1)
    }
    
    func testFindAll() {
        let result = feedingLogService.findAll()
        XCTAssertEqual(result.count, 1)
    }
    
}
