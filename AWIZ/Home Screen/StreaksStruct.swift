//
//  StreaksStruct.swift
//  AWIZ
//
//  Created by Wong Jun heng on 24/11/22.
//

import Foundation

struct Streaks: Codable, Identifiable {
    var id = UUID()
    var currentStreak = 0
    var highestStreak = 1
}

