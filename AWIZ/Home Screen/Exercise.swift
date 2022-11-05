//
//  Exercise.swift
//  AWIZ
//
//  Created by Wong Jun heng on 5/11/22.
//

import Foundation

struct Exercise: Identifiable, Codable {
    
    var id = UUID()
    var title: String
    var details: String
}


