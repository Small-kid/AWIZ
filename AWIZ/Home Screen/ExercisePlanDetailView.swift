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
                .font(.system(size: 35, weight: .bold))
                .offset(x: 0, y: -340)
            Text(exercisePlan.details)
            Text(exercisePlan.exercise.title)
            Text(exercisePlan.exercise2.title)
            Text(exercisePlan.exercise3.title)
            Text(exercisePlan.exercise4.title)
            
        }
    }
}


struct ExercisePlanDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ExercisePlanDetailView(exercisePlan: ExercisePlan(title: "Exercise Plan 1", details: "Basic workout to fall off a building and land in a pool", exercise: Exercise(title: "fall and die", duration: 5), exercise2: Exercise(title: "run and fall", duration: 5), exercise3: Exercise(title: "jog and fall", duration: 10), exercise4: Exercise(title: "weights and fall", duration: 5)))
    }
}
