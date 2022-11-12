//
//  ExercisePlan.swift
//  AWIZ
//
//  Created by Wong Jun heng on 5/11/22.
//

import Foundation

struct ExercisePlan: Identifiable {
    var id = UUID()
    var title: String
    let duration = 25
    var details: String
}

struct Stretching {
    let title = "Stretching"
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
