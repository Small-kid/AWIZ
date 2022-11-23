//
//  ExercisePlanDetailView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 4/11/22.
//
import AVKit
import SwiftUI

struct ExercisePlanDetailView: View {
    
    var exercisePlan: ExercisePlan
    @State var countdownTimer = 300
    @Binding var navigationPath: NavigationPath
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                VStack (alignment: .leading) {
                    
                    Text(exercisePlan.title)
                        .font(.system(size: 35, weight: .bold))
                        .padding(EdgeInsets(top: 100, leading: 20, bottom: 0, trailing: 0))
                    
                    Text(exercisePlan.details)
                        .font(.system(size: 20, weight: .light))
                        .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                    
                    Form {
                        Section (header: Text("1st Exercise")){
                            
                            Text("\(exercisePlan.exercise.title) (\(exercisePlan.exercise.duration) mins)")
                                .font(.system(size: 25, weight: .regular))
                        }
                        
                        Section (header: Text("2nd Exercise")) {
                            Text("\(exercisePlan.exercise2.title) (\(exercisePlan.exercise2.duration) mins)")
                                .font(.system(size: 25, weight: .regular))
                            //     .padding(EdgeInsets(top: 80, leading: 0, bottom: 0, trailing: 135))
                        }
                        
                        Section (header: Text("3rd Exercise")) {
                            
                            Text("\(exercisePlan.exercise3.title) (\(exercisePlan.exercise3.duration) mins)")
                                .font(.system(size: 25, weight: .regular))
                        }
                        
                        Section (header: Text("4th Exercise")) {
                            Text("\(exercisePlan.exercise4.title) (\(exercisePlan.exercise4.duration) mins)")
                                .font(.system(size: 25, weight: .regular))
                        }
                        
                        Section (header: Text("5th Exercise")) {
                            Text("\(exercisePlan.exercise5.title) (\(exercisePlan.exercise5.duration) mins)")
                                .font(.system(size: 25, weight: .regular))
                        }
                    }
                    NavigationLink(destination: ExerciseScreenView( exercisePlan: exercisePlan, navigationPath: $navigationPath))
                    {
                        Text("Start exercise")
                            .padding()
                            .background((Color(red: 184/255, green: 243/255, blue: 255/255)))
                            .foregroundColor(.black)
                            .cornerRadius(10)
                    }
                    
                    .padding(EdgeInsets(top: -150, leading: 130, bottom: 0, trailing: 0))
                    .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 20)))
                    
                    
                }
                .frame(width: geometry.size.width)
                .edgesIgnoringSafeArea(.all)
            }
        }
    }
}






struct ExercisePlanDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        ExercisePlanDetailView(exercisePlan:ExercisePlan(title: "Exercise Plan 4", details: "Choose this plan for a more advanced workout (**Warning**: Only recommended for elderly who regulary exercise/are very active)",
            exercise: Exercise(title: "High Knee March", duration: 5, steps: "From a standing start, with your arms bent at ninety degrees by your sides, start running on the spot, lifting your knees up to waist height and repeating the motion", video: AVPlayer(url:  Bundle.main.url(forResource: "HighKneeMarch" , withExtension: "MOV")!)),
                exercise2: Exercise(title: "Calf Raises", duration: 5, steps: "Raise your heels off the floor and return to the starting position, by slowly lowering your heels. (We recommend doing 20 seconds per rep)", video: AVPlayer(url:  Bundle.main.url(forResource: "CalfRaises" , withExtension: "MOV")!)),
                exercise3: Exercise(title: "Wall Push Ups", duration: 5, steps: "Place hands on a wall shoulder-width apart and at chest level then step back with both feet.Bend your elbows and lower your upper body towards the wall. Next, push yourself back up into the starting position (We recommend doing 5 reps before taking a 10 second rest)", video: AVPlayer(url:  Bundle.main.url(forResource: "WallPushUp" , withExtension: "MOV")!)),
                    exercise4: Exercise(title: "Sit Ups", duration: 5, steps: "", video: AVPlayer(url:  Bundle.main.url(forResource: "SitUp" , withExtension: "mp4")!)),
                exercise5: Exercise(title: "Jog on the Spot", duration: 5, steps: "Lift your right arm and left foot at the same time and raise your knee as high as your hips. Then switch to the opposite foot, quickly lifting your right foot to hip height and repeat.", video: AVPlayer(url:  Bundle.main.url(forResource: "JogOnTheSpot" , withExtension: "MOV")!))
                                                        ), navigationPath: .constant(NavigationPath()))
    }
    
}
