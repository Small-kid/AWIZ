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
    
//    init(title: String, details: String, exercise: Exercise, exercise2: Exercise, exercise3: Exercise, exercise4: Exercise) {
//        self.title = title
//        self.details = details
//        self.exercise = exercise
//        self.exercise2 = exercise2
//        self.exercise3 = exercise3
//        self.exercise4 = exercise4
//    }
}

struct Exercise {
    var title: String
    var duration: Int
}

struct ToeTouches {
    let title = "Toe touches"
    let duration = 5
}

struct ArmCircles {
    let title = "Arm Circles"
    let duration = 5
}

struct CalfRaises {
    let title = "Calf raises"
    let duration = 5
}

struct RunOnSpot {
    let title = "Running on the Spot"
    let duration = 10
}
