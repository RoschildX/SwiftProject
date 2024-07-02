//
//  FeedingLogService.swift
//  petProject
//
//  Created by Mohamad Farhan Bin Roslan on 02/07/2024.
//

import Foundation

class FeedingLogService: IFeedingLogService {

    var feedingLogs: [FeedingLog] = []
    
    func create(log: FeedingLog) {
        feedingLogs.append(log)
    }
    
    func findBy(pet: Pet) -> [FeedingLog] {
        var petToFind: [FeedingLog] = []
        
        for log in feedingLogs {
            if log.pet == pet {
                petToFind.append(log)
            }
        }
        return petToFind
    }
    
    func findAll() -> [FeedingLog] {
        return feedingLogs
    }
}
