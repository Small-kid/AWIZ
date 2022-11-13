//
//  ExercisePlanDetailView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 4/11/22.
//

import SwiftUI

struct ExercisePlanDetailView: View {
    @Binding var exercisePlan: ExercisePlan
    var body: some View {
            VStack {
                Text(exercisePlan.title)
            }
        }
    }
    

struct ExercisePlanDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ExercisePlanDetailView(exercisePlan: $exercisePlan)
    }
}
