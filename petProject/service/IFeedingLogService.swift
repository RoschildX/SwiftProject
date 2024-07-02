//
//  IFeedingLogService.swift
//  petProject
//
//  Created by Mohamad Farhan Bin Roslan on 02/07/2024.
//

import Foundation

protocol IFeedingLogService {
    func create(log: FeedingLog)
    func findBy(pet: Pet) -> [FeedingLog]
    func findAll() -> [FeedingLog]
}
