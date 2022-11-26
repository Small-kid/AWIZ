//
//  StreaksManager.swift
//  AWIZ
//
//  Created by Wong Jun heng on 26/11/22.
//

import Foundation
import SwiftUI

class StreaksManager: ObservableObject {
    @Published var streakss: [Streaks] = [] {
        didSet {
            save()
        }
    }
    
    let sampleStreakss: [Streaks] = []
    
    init() {
        load()
    }
    
    func getArchiveURL() -> URL {
        let plistName = "streakss.plist"
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        return documentsDirectory.appendingPathComponent(plistName)
    }
    
    func save() {
        let archiveURL = getArchiveURL()
        let propertyListEncoder = PropertyListEncoder()
        let encodedStreakss = try? propertyListEncoder.encode(streakss)
        try? encodedStreakss?.write(to: archiveURL, options: .noFileProtection)
    }
    
    func load() {
        let archiveURL = getArchiveURL()
        let propertyListDecoder = PropertyListDecoder()
        
        var finalStreakss: [Streaks]!
        
        if let retrievedStreaksData = try? Data(contentsOf: archiveURL),
           let decodedStreakss = try? propertyListDecoder.decode([Streaks].self, from: retrievedStreaksData) {
            finalStreakss = decodedStreakss
        } else {
            finalStreakss = sampleStreakss
        }
        
        streakss = finalStreakss
    }
}

