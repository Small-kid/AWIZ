//
//  ContentView.swift
//  AWIZ
//
//  Created by swift_user on 22/10/22.
//

import SwiftUI
import AVKit

struct ContentView: View {
    @State var exercisePlans = [
        ExercisePlan(title: "Exercise Plan 1", details: "Choose this plan for a more basic workout",
                     exercise: Exercise(title: "Elbow Stretch", duration: 5, steps: "Lift your left arm up while pushing it towards your chest, with your elbow pointing forward.", video: AVPlayer(url:  Bundle.main.url(forResource: "ElbowStretch" , withExtension: "MOV")!)),
                     exercise2: Exercise(title: "Tricep Stretch", duration: 5, steps: "Lift your left elbow straight up while bending your arm. Grab your left elbow with your right hand and pull your left elbow towards your head or slightly behind your head with light pressure.", video: AVPlayer(url:  Bundle.main.url(forResource: "TricepStretch" , withExtension: "MOV")!)),
                     exercise3: Exercise(title: "Toe Touches", duration: 5, steps: "Sit with your legs closed and toes pointing up. Keep your knees straight while stretching your arms forward to touch your toes.", video: AVPlayer(url:  Bundle.main.url(forResource: "ToeTouches" , withExtension: "MOV")!)),
                     exercise4: Exercise(title: "Arm Circles", duration: 5, steps: "Hold your arms straight out to your sides, then swing them forwards or backwards in circles. Try to keep your shoulders down while doing this exercise.", video: AVPlayer(url:  Bundle.main.url(forResource: "ArmCircles" , withExtension: "MOV")!)),
                     exercise5: Exercise(title: "Calf Raises", duration: 5, steps: "Raise your heels off the floor and return to the starting position, by slowly lowering your heels", video: AVPlayer(url:  Bundle.main.url(forResource: "CalfRaises" , withExtension: "MOV")!))
                    ),
        
        ExercisePlan(title: "Exercise Plan 2", details: "Choose this for a medium difficulty workout",
                     exercise: Exercise(title: "High Knee March", duration: 5, steps: "", video: AVPlayer(url:  Bundle.main.url(forResource: "HighKneeMarch" , withExtension: "MOV")!)),
                     exercise2: Exercise(title: "Walk up stairs", duration: 10, steps: ""),
                     exercise3: Exercise(title: "Jog on the spot", duration: 5, steps: ""),
                     exercise4: Exercise(title: "Lunges", duration: 5, steps: "", video: AVPlayer(url:  Bundle.main.url(forResource: "Lunges" , withExtension: "MOV")!))),
        
        ExercisePlan(title: "Exercise Plan 3", details: "Choose this plan for a more intermediate set of workouts",
                     exercise: Exercise(title: "Stretching", duration: 5, steps: ""),
                     exercise2: Exercise(title: "Leg Raises", duration: 5, steps: ""),
                     exercise3: Exercise(title: "Wall Push Ups", duration: 5, steps: "", video: AVPlayer(url:  Bundle.main.url(forResource: "WallPushUp" , withExtension: "MOV")!)),
                     exercise4: Exercise(title: "Jog on the Spot", duration: 10, steps: "", video: AVPlayer(url:  Bundle.main.url(forResource: "JogOnTheSpot" , withExtension: "MOV")!))),
        
        ExercisePlan(title: "Exercise Plan 4", details: "Choose this plan for a more advanced workout",
                     exercise: Exercise(title: "Stretching", duration: 5, steps: ""),
                     exercise2: Exercise(title: "Wall Push Ups", duration: 5, steps: "", video: AVPlayer(url:  Bundle.main.url(forResource: "WallPushUp" , withExtension: "MOV")!)),
                     exercise3: Exercise(title: "Sit Ups", duration: 5, steps: "", video: AVPlayer(url:  Bundle.main.url(forResource: "SitUp" , withExtension: "MOV")!)),
                     exercise4: Exercise(title: "Jog on the Spot", duration: 10, steps: "", video: AVPlayer(url:  Bundle.main.url(forResource: "JogOnTheSpot" , withExtension: "MOV")!)))
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
