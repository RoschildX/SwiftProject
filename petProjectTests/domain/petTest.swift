//
//  petTest.swift
//  petProjectTests
//
//  Created by Mohamad Farhan Bin Roslan on 28/06/2024.
//

import XCTest
@testable import petProject

final class petTest: XCTestCase {
    
    func petTest() {
        let pet = Pet(name: "Rufus", species: "cat")
        XCTAssertEqual(pet.name, "Rufus")
    }

}
