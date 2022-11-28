//
//  ExerciseScreen4View.swift
//  AWIZ
//
//  Created by Wong Jun heng on 22/11/22.
//

import SwiftUI
import AVKit

struct ExerciseScreen4View: View {
    @Binding var streaks: Streaks
    @Binding var timerStruct: TimerStruct
    var countdownTimer = 300
    @State var player = AVPlayer()
    var exercisePlan: ExercisePlan
    @Binding var navigationPath: NavigationPath
    func reset() {
        timerStruct.countdownTimer = 300
        timerStruct.timerRunning = false
    }
    var body: some View {
        VStack {
            
            Form {
                Section(header: Text("4th Exercise (Scroll down for exercise steps)")) {
                    Text(exercisePlan.exercise4.title)
                        .font(.system(size: 35, weight: .medium))
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                }
                
                Section(header: Text("Video example")) {
                    VideoPlayer(player: exercisePlan.exercise4.video)
                        .onAppear() {
                            player.play()
                        }
                        .scaledToFit()
                        .frame(alignment: .center)
                        .cornerRadius(10)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                }
                    Section(header: Text("Steps:")){
                        Text(exercisePlan.exercise4.steps)
                            .font(.system(size: 20, weight: .regular))
                            .padding()
                            .frame(alignment: .center)
                    }
                }
//            TimerView(streaks: $streaks, timerStruct: $timerStruct)
//                                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 15, trailing: 0))

            
          
//            Button {
//                navigationPath.append("ExerciseScreen5View")
//                reset()
//            } label: {
//                Text("Next exercise")
//                    .padding()
//                    .background((Color(red: 184/255, green: 243/255, blue: 255/255)))
//                    .foregroundColor(.black)
//                    .cornerRadius(10)
//                    .navigationBarBackButtonHidden()
//            }
//            .padding(EdgeInsets(top: 0, leading: 10, bottom: 10, trailing: 10))
            
        }
    }
}
struct ExerciseScreen4View_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseScreen4View(streaks: .constant(Streaks()), timerStruct: .constant(TimerStruct()), exercisePlan: ExercisePlan(title: "Exercise Plan 1", details: "Choose this plan for a more basic workout",
            exercise: Exercise(title: "Tricep Stretch", duration: 5, steps: "Lift your left elbow straight up while bending your arm. Grab your left elbow with your right hand and pull your left elbow towards your head or slightly behind your head with light pressure. (We recommend doing 10 seconds per rep)", video: AVPlayer(url:  Bundle.main.url(forResource: "TricepStretch" , withExtension: "mp4")!)),
                exercise2: Exercise(title: "Toe Touches", duration: 5, steps: "Sit with your legs closed and toes pointing up. Keep your knees straight while stretching your arms forward to touch your toes. (We recommend doing 20 seconds per rep)", video: AVPlayer(url:  Bundle.main.url(forResource: "ToeTouches" , withExtension: "mp4")!)),
                exercise3: Exercise(title: "Arm Circles", duration: 5, steps: "Hold your arms straight out to your sides, then swing them forwards or backwards in circles. Try to keep your shoulders down while doing this exercise. (We recommend doing 20 seconds per rep then changing sides)", video: AVPlayer(url:  Bundle.main.url(forResource: "ArmCircles" , withExtension: "mp4")!)),
                exercise4: Exercise(title: "Elbow Stretch", duration: 5, steps: "Lift your left arm up while pushing it towards your chest, with your elbow pointing forward. (We recommend doing 10 seconds per rep)", video: AVPlayer(url:  Bundle.main.url(forResource: "ElbowStretch" , withExtension: "mp4")!)),
                exercise5: Exercise(title: "Calf Raises", duration: 5, steps: "Raise your heels off the floor and return to the starting position, by slowly lowering your heels. (We recommend doing 20 seconds per rep)", video: AVPlayer(url:  Bundle.main.url(forResource: "CalfRaises" , withExtension: "mp4")!))
                                                      ), navigationPath: .constant(NavigationPath()))
    }
}

