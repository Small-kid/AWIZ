//
//  ContentView.swift
//  AWIZ
//
//  Created by swift_user on 22/10/22.
//

import SwiftUI
import AVKit

struct ContentView: View {
    @State var timer = TimerStruct()
    @State var navigationPath: NavigationPath = NavigationPath()
    @State var exercisePlans = [
        ExercisePlan(title: "Exercise Plan 1", details: "Choose this plan for a more basic workout",
                     exercise: Exercise(title: "Tricep Stretch", duration: 5, steps: "Lift your left elbow straight up while bending your arm. Grab your left elbow with your right hand and pull your left elbow towards your head or slightly behind your head with light pressure. (We recommend doing 10 seconds per rep).", video: AVPlayer(url:  Bundle.main.url(forResource: "TricepStretch" , withExtension: "MOV")!)),
                     exercise2: Exercise(title: "Toe Touches", duration: 5, steps: "Sit with your legs closed and toes pointing up. Keep your knees straight while stretching your arms forward to touch your toes. (We recommend doing 20 seconds per rep).", video: AVPlayer(url:  Bundle.main.url(forResource: "ToeTouches" , withExtension: "MOV")!)),
                     exercise3: Exercise(title: "Arm Circles", duration: 5, steps: "Hold your arms straight out to your sides, then swing them forwards or backwards in circles. Try to keep your shoulders down while doing this exercise. (We recommend doing 20 seconds per rep then changing sides).", video: AVPlayer(url:  Bundle.main.url(forResource: "ArmCircles" , withExtension: "MOV")!)),
                     exercise4: Exercise(title: "Elbow Stretch", duration: 5, steps: "Lift your left arm up while pushing it towards your chest, with your elbow pointing forward. (We recommend doing 10 seconds per rep).", video: AVPlayer(url:  Bundle.main.url(forResource: "ElbowStretch" , withExtension: "mp4")!)),
                     exercise5: Exercise(title: "Calf Raises", duration: 5, steps: "Raise your heels off the floor and return to the starting position, by slowly lowering your heels. (We recommend doing 20 seconds per rep).", video: AVPlayer(url:  Bundle.main.url(forResource: "CalfRaises" , withExtension: "MOV")!))
                    ),
        
        ExercisePlan(title: "Exercise Plan 2", details: "Choose this for a medium difficulty workout",
                     exercise: Exercise(title: "Arm Circles", duration: 5, steps: "Hold your arms straight out to your sides, then swing them forwards or backwards in circles. Try to keep your shoulders down while doing this exercise. (We recommend doing 20 seconds per rep then changing sides).", video: AVPlayer(url:  Bundle.main.url(forResource: "ArmCircles" , withExtension: "MOV")!)),
                     exercise2: Exercise(title: "Toe Touches", duration: 5, steps: "Sit with your legs closed and toes pointing up. Keep your knees straight while stretching your arms forward to touch your toes. (We recommend doing 20 seconds per rep).", video: AVPlayer(url:  Bundle.main.url(forResource: "ToeTouches" , withExtension: "MOV")!)),
                     exercise3: Exercise(title: "Calf Raises", duration: 5, steps: "Raise your heels off the floor and return to the starting position, by slowly lowering your heels. (We recommend doing 20 seconds per rep).", video: AVPlayer(url:  Bundle.main.url(forResource: "CalfRaises" , withExtension: "MOV")!))
                     ,
                     exercise4: Exercise(title: "Wall Push Ups", duration: 5, steps: "Place hands on a wall shoulder-width apart and at chest level then step back with both feet.Bend your elbows and lower your upper body towards the wall. Next, push yourself back up into the starting position (We recommend doing 5 reps before taking a 10 second rest).", video: AVPlayer(url:  Bundle.main.url(forResource: "WallPushUp" , withExtension: "MOV")!)),
                    exercise5: Exercise(title: "Lunges", duration: 5, steps: "Stand with your feet hip-width apart, keep your back straight and your shoulders back. Take a step forward and slowly bend both knees, until your back knee is just above the floor. Stand back up and alternate your legs then repeat the movement. (We recommend doing 6 reps before taking a 10 second rest).", video: AVPlayer(url:  Bundle.main.url(forResource: "Lunges" , withExtension: "MOV")!))
                    ),
        
        ExercisePlan(title: "Exercise Plan 3", details: "Choose this plan for a more intermediate set of workouts (Warning: Only recommended for elderly who regulary exercise/are very active)",
                     exercise: Exercise(title: "Tricep Stretch", duration: 5, steps: "Lift your left elbow straight up while bending your arm. Grab your left elbow with your right hand and pull your left elbow towards your head or slightly behind your head with light pressure. (We recommend doing 10 seconds per rep).", video: AVPlayer(url:  Bundle.main.url(forResource: "TricepStretch" , withExtension: "MOV")!)),
                     exercise2: Exercise(title: "High Knee March", duration: 5, steps: "From a standing start, with your arms bent at ninety degrees by your sides, start running on the spot, lifting your knees up to waist height and repeating the motion.", video: AVPlayer(url:  Bundle.main.url(forResource: "HighKneeMarch" , withExtension: "MOV")!)),
                     exercise3: Exercise(title: "Lunges", duration: 5, steps: "Stand with your feet hip-width apart, keep your back straight and your shoulders back. Take a step forward and slowly bend both knees, until your back knee is just above the floor. Stand back up and alternate your legs then repeat the movement. (We recommend doing 6 reps before taking a 10 second rest).", video: AVPlayer(url:  Bundle.main.url(forResource: "Lunges" , withExtension: "MOV")!)),
                     exercise4: Exercise(title: "Wall Push Ups", duration: 5, steps: "Place hands on a wall shoulder-width apart and at chest level then step back with both feet.Bend your elbows and lower your upper body towards the wall. Next, push yourself back up into the starting position (We recommend doing 5 reps before taking a 10 second rest).", video: AVPlayer(url:  Bundle.main.url(forResource: "WallPushUp" , withExtension: "MOV")!)),
                     exercise5: Exercise(title: "Jog on the Spot", duration: 5, steps: "Lift your right arm and left foot at the same time and raise your knee as high as your hips. Then switch to the opposite foot, quickly lifting your right foot to hip height and repeat.", video: AVPlayer(url:  Bundle.main.url(forResource: "JogOnTheSpot" , withExtension: "MOV")!))),
        
        ExercisePlan(title: "Exercise Plan 4", details: "Choose this plan for a more advanced workout (Warning: Only recommended for elderly who regulary exercise/are very active)",
                     exercise: Exercise(title: "High Knee March", duration: 5, steps: "From a standing start, with your arms bent at ninety degrees by your sides, start running on the spot, lifting your knees up to waist height and repeating the motion.", video: AVPlayer(url:  Bundle.main.url(forResource: "HighKneeMarch" , withExtension: "MOV")!)),
                     exercise2: Exercise(title: "Calf Raises", duration: 5, steps: "Raise your heels off the floor and return to the starting position, by slowly lowering your heels. (We recommend doing 20 seconds per rep).", video: AVPlayer(url:  Bundle.main.url(forResource: "CalfRaises" , withExtension: "MOV")!)),
                     exercise3: Exercise(title: "Wall Push Ups", duration: 5, steps: "Place hands on a wall shoulder-width apart and at chest level then step back with both feet.Bend your elbows and lower your upper body towards the wall. Next, push yourself back up into the starting position (We recommend doing 5 reps before taking a 10 second rest).", video: AVPlayer(url:  Bundle.main.url(forResource: "WallPushUp" , withExtension: "MOV")!)),
                     exercise4: Exercise(title: "Sit Ups", duration: 5, steps: "Lie on your back on a mat with knees bent and feet flat on the floor. Bend and cup both of your hands on your ears. Crunch your ab muscles to lift yourself off the mat. Let your elbows touch your knees then return to your starting position.", video: AVPlayer(url:  Bundle.main.url(forResource: "SitUp" , withExtension: "MOV")!)),
                     exercise5: Exercise(title: "Jog on the Spot", duration: 5, steps: "Lift your right arm and left foot at the same time and raise your knee as high as your hips. Then switch to the opposite foot, quickly lifting your right foot to hip height and repeat.", video: AVPlayer(url:  Bundle.main.url(forResource: "JogOnTheSpot" , withExtension: "MOV")!))
                    )
    ]
    var body: some View {
        NavigationStack(path: $navigationPath) {
            TabView {
                HomeView( timer: $timer, navigationPath: $navigationPath, currentStreak: 10, highestStreak: 35, exercisePlans: $exercisePlans)
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
