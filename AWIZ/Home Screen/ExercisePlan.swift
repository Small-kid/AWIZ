//
//  ExercisePlan.swift
//  AWIZ
//
//  Created by Wong Jun heng on 5/11/22.
//

import Foundation

struct ExercisePlan: Identifiable {
    let id = UUID()
    var title: String
    let duration = 25
    var details: String
    var exercise: Exercise
    var exercise2: Exercise
    var exercise3: Exercise
    var exercise4: Exercise
}

struct Exercise {
    var title: String
    var duration: Int
    //var description: String
}


