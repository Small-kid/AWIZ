//
//  ExercisePlanDetailView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 4/11/22.
//

import SwiftUI

struct ExercisePlanDetailView: View {
    
    var exercisePlan: ExercisePlan
    
    var body: some View {
        VStack {
            Text(exercisePlan.title)
            Text(exercisePlan.details)
        }
    }
}


struct ExercisePlanDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ExercisePlanDetailView(exercisePlan: ExercisePlan(title: "Exercise Plan 1", details: "Basic", exercise: Exercise(title: "fall", duration: 5), exercise2: Exercise(title: "run", duration: 5), exercise3: Exercise(title: "jog", duration: 10), exercise4: Exercise(title: "weights", duration: 5)))
    }
}
