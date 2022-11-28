//
//  HomeScreenView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 22/10/22.
//

import AVKit
import Foundation
import SwiftUI

struct HomeView: View {
    
    @AppStorage("exerciseTime") var exerciseTime = 0.0
    
    @Binding var streak: Streaks
    @Binding var timerStruct: TimerStruct
    @Binding var exercisePlans: [ExercisePlan]
    @Binding var navigationPath: NavigationPath
    
    @State var isSheetPresented = false
    let dateChange = UIApplication.significantTimeChangeNotification
    
    func ridzero(result: Double) -> String {
        let value = String(format: "%g", result)
        return value
    }
    func round(result: Double) -> String {
        let value = String(format: "%.1f", result)
        return value
    }
    
    let beginingOfDay = NSCalendar.current.startOfDay(for: NSDate() as Date)
    
    func resetExerciseTime(){
        
        let dateComparisionResult:ComparisonResult = NSDate().compare(beginingOfDay)

        if dateComparisionResult == ComparisonResult.orderedDescending || dateComparisionResult == ComparisonResult.orderedSame{
        exerciseTime = 0.0
    }
}

    func isNewDay() -> Bool {
        let defaults = UserDefaults.standard
        let now = Date.now
        if let savedDate = defaults.object(forKey: "currentDate") as? Date,
           Calendar.current.compare(savedDate, to: now, toGranularity: .day) == .orderedSame {
            return false
        }
        defaults.set(now, forKey: "currentDate")
        return true
    }

    
    var body: some View {
            //GeometryReader { geometry in
                ScrollView {
                    ZStack {
                        VStack {
                            
                            let percent = Double(exerciseTime/1500)
                                Text("Welcome back to ElderlyFit")
                                    .font(.system(size: 25,weight: .medium, design: .rounded))
                                    .offset(x: 0, y: 20)
                                
                                CircularProgressView(timer: $timerStruct, progress: CGFloat(percent))
                                    .frame(width: 150, height: 150)
                                    .offset(x: -95, y: -240)
                                    .padding(EdgeInsets(top: 280, leading: 0, bottom: 0, trailing: 0))
                                Text("\(round(result:percent*100))%")
                                    .font(.system(size: 30, weight: .bold, design: .rounded))
                                    .offset(x:-92, y:-345)
                                
                                Text("\(round(result: exerciseTime/60)) mins of exercise completed today")
                                    .frame(width: 200, height: 50)
                                    .font(.system(size: 20, design: .rounded))
                                    .offset(x:100, y:-440)
                                
                                Button {
                                    
                                    navigationPath.append("ExercisePlanDetailView")
                                    
                                } label: {
                                    Text("Start exercise")
                                }
                                .padding()
                                .background((Color(red: 184/255, green: 243/255, blue: 255/255)))
                                .foregroundColor(.black)
                                .cornerRadius(10)
                                .offset(x: 92, y: -430)
                                .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 16)))
                                
                                
                                StreaksView(timer: $timerStruct, streak: $streak)
                                    .offset(x:0, y: -370)
                                    .padding()
                                
                                Text("Choose your exercise plan:")
                                    .bold()
                                    .font(.system(size: 25))
                                    .offset(x: -30, y: -450)
                                    .zIndex(1.0)
                                
                                
                                ExercisePlanView( streaks: $streak, timer: $timerStruct, navigationPath: $navigationPath, exercisePlans: $exercisePlans)
                                    .offset(x: 15, y: -430)
                                    .zIndex(-1.0)
                                    .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 15)))
                                
                            }
                            //.frame(width: geometry.size.width)
                            .edgesIgnoringSafeArea(.all)
                            
                        }
                    }
                }
        }
    


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(streak: .constant(Streaks()), timerStruct: .constant(TimerStruct()), exercisePlans: .constant([ExercisePlan(title: "Exercise Plan 1", details: "Choose this plan for a more basic workout",
                                                                                                                                                            exercise: Exercise(title: "Tricep Stretch", duration: 5, steps: "Lift your left elbow straight up while bending your arm. Grab your left elbow with your right hand and pull your left elbow towards your head or slightly behind your head with light pressure. (We recommend doing 10 seconds per rep)", video: AVPlayer(url:  Bundle.main.url(forResource: "TricepStretch" , withExtension: "mp4")!)),
                                                                                                                                                                                     exercise2: Exercise(title: "Toe Touches", duration: 5, steps: "Sit with your legs closed and toes pointing up. Keep your knees straight while stretching your arms forward to touch your toes. (We recommend doing 20 seconds per rep)", video: AVPlayer(url:  Bundle.main.url(forResource: "ToeTouches" , withExtension: "mp4")!)),
                                                                                                                                                                                     exercise3: Exercise(title: "Arm Circles", duration: 5, steps: "Hold your arms straight out to your sides, then swing them forwards or backwards in circles. Try to keep your shoulders down while doing this exercise. (We recommend doing 20 seconds per rep then changing sides)", video: AVPlayer(url:  Bundle.main.url(forResource: "ArmCircles" , withExtension: "mp4")!)),
                                                                                                                                                                                     exercise4: Exercise(title: "Elbow Stretch", duration: 5, steps: "Lift your left arm up while pushing it towards your chest, with your elbow pointing forward. (We recommend doing 10 seconds per rep)", video: AVPlayer(url:  Bundle.main.url(forResource: "ElbowStretch" , withExtension: "mp4")!)),
                                                                                                                                                                                     exercise5: Exercise(title: "Calf Raises", duration: 5, steps: "Raise your heels off the floor and return to the starting position, by slowly lowering your heels. (We recommend doing 20 seconds per rep)", video: AVPlayer(url:  Bundle.main.url(forResource: "CalfRaises" , withExtension: "mp4")!))
                                                                                                                                                                                    )]), navigationPath: .constant(NavigationPath()))
    }
}
