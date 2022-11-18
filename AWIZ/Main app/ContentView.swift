//
//  ContentView.swift
//  AWIZ
//
//  Created by swift_user on 22/10/22.
//

import SwiftUI

struct ContentView: View {
    @State var exercisePlans = [
        ExercisePlan(title: "Exercise Plan 1", details: "Choose this for a light and basic workout",
                     exercise: Exercise(title: "Toe touches", duration: 5, steps: "Lift one arm up & push your arm towards your chest, elbow painting forward"),
                     exercise2: Exercise(title: "Arm Circles", duration: 5, steps: "Hold arms straight out to your sides and swing your arms forward or backwards."),
                     exercise3: Exercise(title: "Elbow Stretch", duration: 5, steps: "Lift one arm up & push your elbow towards your chest"),
                     exercise4: Exercise(title: "Calf Raises", duration: 5, steps: "")
                    ),
        
        ExercisePlan(title: "Exercise Plan 2", details: "Choose this for a medium difficulty workout",
                     exercise: Exercise(title: "High Knee March", duration: 5, steps: ""),
                     exercise2: Exercise(title: "Walk up stairs", duration: 10, steps: ""),
                     exercise3: Exercise(title: "Jog on the spot", duration: 5, steps: ""),
                     exercise4: Exercise(title: "Lunges", duration: 5, steps: "")),
        
        ExercisePlan(title: "Exercise Plan 3", details: "Choose this plan for a more intermediate set of workouts", exercise: Exercise(title: "Stretching", duration: 5, steps: ""), exercise2: Exercise(title: "Leg Raises", duration: 5, steps: ""), exercise3: Exercise(title: "Wall Push Ups", duration: 5, steps: ""), exercise4: Exercise(title: "Jog on the Spot", duration: 10, steps: "")),
        
        ExercisePlan(title: "Exercise Plan 4", details: "Choose this plan for a more advanced workout", exercise: Exercise(title: "Stretching", duration: 5, steps: ""), exercise2: Exercise(title: "Incline Push Ups", duration: 5, steps: ""), exercise3: Exercise(title: "Sit Ups", duration: 5, steps: ""), exercise4: Exercise(title: "Jog on the Spot", duration: 10, steps: ""))
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
