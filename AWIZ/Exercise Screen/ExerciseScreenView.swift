//
//  ExerciseScreenView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 14/11/22.
//

import SwiftUI
import AVKit

struct ExerciseScreenView: View {

    @State var player = AVPlayer()
    var exercisePlan: ExercisePlan

    var body: some View {
        VStack {
            
            Text(exercisePlan.exercise.title)
                .font(.system(size: 35, weight: .medium))
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            
            VideoPlayer(player: exercisePlan.exercise.video)
                .scaledToFit()
                .frame(alignment: .center)
                .cornerRadius(10)
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            
            Text(exercisePlan.exercise.steps)
                .font(.system(size: 20, weight: .regular))
                .padding()
                .frame(alignment: .center)
                      
            
            TimerView()
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 35, trailing: 0))
            
        }
    }
}
struct ExerciseScreenView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseScreenView( exercisePlan: ExercisePlan(title: "Exercise Plan 1", details: "Choose this plan for a more basic workout",
            exercise: Exercise(title: "Tricep Stretch", duration: 5, steps: "Lift your left elbow straight up while bending your arm. Grab your left elbow with your right hand and pull your left elbow towards your head or slightly behind your head with light pressure. (We recommend doing 10 seconds per rep)", video: AVPlayer(url:  Bundle.main.url(forResource: "TricepStretch" , withExtension: "MOV")!)),
                exercise2: Exercise(title: "Toe Touches", duration: 5, steps: "Sit with your legs closed and toes pointing up. Keep your knees straight while stretching your arms forward to touch your toes. (We recommend doing 20 seconds per rep)", video: AVPlayer(url:  Bundle.main.url(forResource: "ToeTouches" , withExtension: "MOV")!)),
                exercise3: Exercise(title: "Arm Circles", duration: 5, steps: "Hold your arms straight out to your sides, then swing them forwards or backwards in circles. Try to keep your shoulders down while doing this exercise. (We recommend doing 20 seconds per rep then changing sides)", video: AVPlayer(url:  Bundle.main.url(forResource: "ArmCircles" , withExtension: "MOV")!)),
                exercise4: Exercise(title: "Elbow Stretch", duration: 5, steps: "Lift your left arm up while pushing it towards your chest, with your elbow pointing forward. (We recommend doing 10 seconds per rep)", video: AVPlayer(url:  Bundle.main.url(forResource: "ElbowStretch" , withExtension: "MOV")!)),
                exercise5: Exercise(title: "Calf Raises", duration: 5, steps: "Raise your heels off the floor and return to the starting position, by slowly lowering your heels. (We recommend doing 20 seconds per rep)", video: AVPlayer(url:  Bundle.main.url(forResource: "CalfRaises" , withExtension: "MOV")!))
                                                      ))
    }
}
