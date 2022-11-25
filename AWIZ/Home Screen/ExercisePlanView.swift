//
//  ExercisePlanView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 4/11/22.
//
import AVKit
import SwiftUI

@available(iOS 16.0, *)
struct ExercisePlanView: View {
    @Binding var streaks: Streaks
    @Binding var timer: TimerStruct
    @Binding var navigationPath: NavigationPath
    @State var isSheetPresented = false
    @Binding var exercisePlans: [ExercisePlan]
    var body: some View {
        
        let row = GridItem(.fixed(50), spacing: 20, alignment: .center)
        
        ScrollView(.horizontal) {
            LazyHGrid(rows: [row]) {
                ForEach(exercisePlans) { exercisePlan in
                    NavigationLink {
                        ExercisePlanDetailView(streak: $streaks, timer: $timer, exercisePlan: exercisePlan, navigationPath: $navigationPath)
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                    } label: {
                        Label("", systemImage: "figure.cooldown")
                            .font(.system(size: 30))
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        
                        Text(exercisePlan.title)
                            .font(.system(size: 22))
                            .foregroundColor(.black)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 11))
                    }
                    .frame(width: 140, height: 130)
                    .padding()
                    .background((Color(red: 220/255, green: 247/255, blue: 99/255)))
                    .cornerRadius(10)
                    .navigationDestination(for: String.self) { name in
                        switch name{
                        case "ExercisePlanDetailView":
                            ExercisePlanDetailView( streak: $streaks, timer: $timer, exercisePlan: exercisePlan, navigationPath: $navigationPath)
                        case "ExerciseScreenView":
                            ExerciseScreenView(streaks: $streaks, timerStruct: $timer, exercisePlan: exercisePlan, navigationPath: $navigationPath)
                        case "ExerciseScreen2View":
                            ExerciseScreen2View(streaks: $streaks, timerStruct: $timer, exercisePlan: exercisePlan, navigationPath: $navigationPath)
                        case "ExerciseScreen3View":
                            ExerciseScreen3View(streaks: $streaks, timerStruct: $timer, exercisePlan: exercisePlan, navigationPath: $navigationPath)
                        case "ExerciseScreen4View":
                            ExerciseScreen4View(streaks: $streaks, timerStruct: $timer, exercisePlan: exercisePlan, navigationPath: $navigationPath)
                        case "ExerciseScreen5View":
                            ExerciseScreen5View(streaks: $streaks, timerStruct: $timer, exercisePlan: exercisePlan, navigationPath: $navigationPath)
                        case "ExerciseScreen":
                            ExerciseScreen(streaks: $streaks, timer: $timer, exercisePlan: exercisePlan, navigationPath: $navigationPath)
                        case"TimerView":
                            TimerView(streaks: $streaks, timerStruct: $timer)
                        default:
                            EmptyView()
                        }
                    }
                }
            }
        }
    }
}


struct ExercisePlanView_Previews: PreviewProvider {
    static var previews: some View {
        ExercisePlanView(streaks: .constant(Streaks()), timer: .constant(TimerStruct()), navigationPath: .constant(NavigationPath()), exercisePlans: .constant([ExercisePlan(title: "Exercise Plan 1", details: "Choose this plan for a more basic workout",
                                                                            exercise: Exercise(title: "Tricep Stretch", duration: 5, steps: "Lift your left elbow straight up while bending your arm. Grab your left elbow with your right hand and pull your left elbow towards your head or slightly behind your head with light pressure. (We recommend doing 10 seconds per rep)", video: AVPlayer(url:  Bundle.main.url(forResource: "TricepStretch" , withExtension: "mp4")!)),
                                                                                                exercise2: Exercise(title: "Toe Touches", duration: 5, steps: "Sit with your legs closed and toes pointing up. Keep your knees straight while stretching your arms forward to touch your toes. (We recommend doing 20 seconds per rep)", video: AVPlayer(url:  Bundle.main.url(forResource: "ToeTouches" , withExtension: "mp4")!)),
                                                                                                 exercise3: Exercise(title: "Arm Circles", duration: 5, steps: "Hold your arms straight out to your sides, then swing them forwards or backwards in circles. Try to keep your shoulders down while doing this exercise. (We recommend doing 20 seconds per rep then changing sides)", video: AVPlayer(url:  Bundle.main.url(forResource: "ArmCircles" , withExtension: "mp4")!)),
                                                                                                 exercise4: Exercise(title: "Elbow Stretch", duration: 5, steps: "Lift your left arm up while pushing it towards your chest, with your elbow pointing forward. (We recommend doing 10 seconds per rep)", video: AVPlayer(url:  Bundle.main.url(forResource: "ElbowStretch" , withExtension: "mp4")!)),
                                                                                                 exercise5: Exercise(title: "Calf Raises", duration: 5, steps: "Raise your heels off the floor and return to the starting position, by slowly lowering your heels. (We recommend doing 20 seconds per rep)", video: AVPlayer(url:  Bundle.main.url(forResource: "CalfRaises" , withExtension: "mp4")!))
                                                                                                )]))
    }
}
