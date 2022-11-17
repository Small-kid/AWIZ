 //
//  ContentView.swift
//  AWIZ
//
//  Created by swift_user on 22/10/22.
//

import SwiftUI

struct ContentView: View {
    @State var exercisePlans = [
        ExercisePlan(title: "Exercise Plan 1", details: "Choose this for a light and basic workout", exercise:
        Exercise(title: "Toe touches and Arm Stretches", duration: 5), exercise2: Exercise(title: "Arm Circles", duration: 5), exercise3: Exercise(title: "Calf Raises", duration: 5), exercise4: Exercise(title: "Jog on the Spot", duration: 5)
        ),
        ExercisePlan(title: "Exercise Plan 2", details: "Choose this for a medium difficulty workout", exercise: Exercise(title: "High Knee March", duration: 5), exercise2: Exercise(title: "Stair Exercise", duration: 10), exercise3: Exercise(title: "Chair Exercise", duration: 5), exercise4: Exercise(title: "Lunges", duration: 5)),

//        ExercisePlan(title: "Exercise Plan 2", details: "Choose this plan for a more intermediate set of workouts", exercise: Exercise(title: "Wall Push-ups", duration: <#T##Int#>), exercise2: <#T##Exercise#>, exercise3: <#T##Exercise#>, exercise4: <#T##Exercise#>)
  ]
    var body: some View {
        TabView {
            HomeView(exerciseTrack: 20, currentStreak: 10, highestStreak: 35, exercisePlans: $exercisePlans)
                .tabItem {
                Label("Home", systemImage: "house.fill")
            }
            ExerciseView()
                .tabItem {
                    Label("Exercises", systemImage: "figure.walk.circle.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
