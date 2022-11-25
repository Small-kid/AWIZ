//
//  ExerciseScreen.swift
//  AWIZ
//
//  Created by Wong Jun heng on 25/11/22.
//

import AVKit
import SwiftUI

struct ExerciseScreen: View {
    @State var presentAlert = false
    @Binding var streaks: Streaks
    @Binding var timer: TimerStruct
    var countdownTimer = 300
    @State var player = AVPlayer()
    var exercisePlan: ExercisePlan
    @Binding var navigationPath: NavigationPath
    var body: some View {
        VStack {
            TabView {
                ExerciseScreenView(streaks: $streaks, timerStruct: $timer, exercisePlan: exercisePlan, navigationPath: $navigationPath)
                    .tabItem {
                        Label("Home", systemImage: "house.fill")
                    }
                ExerciseScreen2View(streaks: $streaks, timerStruct: $timer, exercisePlan: exercisePlan, navigationPath: $navigationPath)
                    .tabItem {
                        Label("Home", systemImage: "house.fill")
                    }
                ExerciseScreen3View(streaks: $streaks, timerStruct: $timer, exercisePlan: exercisePlan, navigationPath: $navigationPath)
                    .tabItem {
                        Label("Home", systemImage: "house.fill")
                    }
                ExerciseScreen4View(streaks: $streaks, timerStruct: $timer, exercisePlan: exercisePlan, navigationPath: $navigationPath)
                    .tabItem {
                        Label("Home", systemImage: "house.fill")
                    }
                ExerciseScreen5View(streaks: $streaks, timerStruct: $timer, exercisePlan: exercisePlan, navigationPath: $navigationPath)
                    .tabItem {
                        Label("Home", systemImage: "house.fill")
                    }
            }
            .tabViewStyle(PageTabViewStyle())
            
            TimerView(streaks: $streaks, timerStruct: $timer)
            
            Button {
                presentAlert = true
            } label: {
                Text("Mark exercise as complete")
                    .padding()
                    .background((Color(red: 184/255, green: 243/255, blue: 255/255)))
                    .foregroundColor(.black)
                    .cornerRadius(10)
                
            }
            .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 20)))
            .navigationBarBackButtonHidden()
            .alert("Warning: Mark entire exercise plan as complete?", isPresented: $presentAlert) {
                Button("Proceed") {
                    if timer.exerciseTime <= 1500 {
                        timer.exerciseTime = 1500
                    } else if timer.exerciseTime > 1500 {
                        timer.exerciseTime += 1500
                    }
                    navigationPath = NavigationPath()
                    timer.isCompleted.toggle()
                    timer.isActive = false
                    if timer.isCompleted == true {
                        streaks.currentStreak += 1
                        streaks.highestStreak += 1
                    }
                }
                    Button("Cancel", role: .cancel){}
                Button("Don't complete exercise plan") {
                    navigationPath = NavigationPath()
                }
                }
        }
    }
}

struct ExerciseScreen_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseScreen(streaks: .constant(Streaks()), timer: .constant(TimerStruct()), exercisePlan: ExercisePlan(title: "Exercise Plan 1", details: "Choose this plan for a more basic workout",
            exercise: Exercise(title: "Tricep Stretch", duration: 5, steps: "Lift your left elbow straight up while bending your arm. Grab your left elbow with your right hand and pull your left elbow towards your head or slightly behind your head with light pressure. (We recommend doing 10 seconds per rep)", video: AVPlayer(url:  Bundle.main.url(forResource: "TricepStretch" , withExtension: "mp4")!)),
                exercise2: Exercise(title: "Toe Touches", duration: 5, steps: "Sit with your legs closed and toes pointing up. Keep your knees straight while stretching your arms forward to touch your toes. (We recommend doing 20 seconds per rep)", video: AVPlayer(url:  Bundle.main.url(forResource: "ToeTouches" , withExtension: "mp4")!)),
                exercise3: Exercise(title: "Arm Circles", duration: 5, steps: "Hold your arms straight out to your sides, then swing them forwards or backwards in circles. Try to keep your shoulders down while doing this exercise. (We recommend doing 20 seconds per rep then changing sides)", video: AVPlayer(url:  Bundle.main.url(forResource: "ArmCircles" , withExtension: "mp4")!)),
                exercise4: Exercise(title: "Elbow Stretch", duration: 5, steps: "Lift your left arm up while pushing it towards your chest, with your elbow pointing forward. (We recommend doing 10 seconds per rep)", video: AVPlayer(url:  Bundle.main.url(forResource: "ElbowStretch" , withExtension: "mp4")!)),
                exercise5: Exercise(title: "Calf Raises", duration: 5, steps: "Raise your heels off the floor and return to the starting position, by slowly lowering your heels. (We recommend doing 20 seconds per rep)", video: AVPlayer(url:  Bundle.main.url(forResource: "CalfRaises" , withExtension: "mp4")!))
                                                     ), navigationPath: .constant(NavigationPath()))
    }
}
