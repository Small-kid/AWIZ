
import Foundation
import SwiftUI

class TimerStructManager: ObservableObject {
    @Published var timerStructs: [TimerStruct] = [] {
        didSet {
            save()
        }
    }
    
    let sampleTimerStructs: [TimerStruct] = []
    
    init() {
        load()
    }
    
    func getArchiveURL() -> URL {
        let plistName = "timerStructs.plist"
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        return documentsDirectory.appendingPathComponent(plistName)
    }
    
    func save() {
        let archiveURL = getArchiveURL()
        let propertyListEncoder = PropertyListEncoder()
        let encodedTimerStructs = try? propertyListEncoder.encode(timerStructs)
        try? encodedTimerStructs?.write(to: archiveURL, options: .noFileProtection)
    }
    
    func load() {
        let archiveURL = getArchiveURL()
        let propertyListDecoder = PropertyListDecoder()
        
        var finalTimerStructs: [TimerStruct]!
        
        if let retrievedTimerStructData = try? Data(contentsOf: archiveURL),
           let decodedTimerStructs = try? propertyListDecoder.decode([TimerStruct].self, from: retrievedTimerStructData) {
            finalTimerStructs = decodedTimerStructs
        } else {
            finalTimerStructs = sampleTimerStructs
        }
        
        timerStructs = finalTimerStructs
    }
}
