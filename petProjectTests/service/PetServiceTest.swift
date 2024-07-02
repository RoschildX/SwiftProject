//
//  PetServiceTest.swift
//  petProjectTests
//
//  Created by Mohamad Farhan Bin Roslan on 28/06/2024.
//

import XCTest
@testable import petProject

final class PetServiceTest: XCTestCase {

    let petService = PetService()
    let pet = Pet(name: "Simba", species: "cat")
    let pet1 = Pet(name: "Garfield", species: "cat")
                  
    override func setUpWithError() throws {
        petService.create(t: pet)
    }
                  
    func testCreate() {
        petService.create(t: pet1)
        let result = petService.findAll()
        
        XCTAssertEqual(result.count, 2)
        XCTAssertEqual(result[1].name, pet1.name)
    }
    
    func testFindBy() {
        let resultFindBy = petService.findBy(name: "Simba")
        XCTAssertEqual(resultFindBy, pet)
    }
    
    func testFindAll() {
        let result = petService.findAll()
        XCTAssertEqual(result.count, 1)
    }
    
}
