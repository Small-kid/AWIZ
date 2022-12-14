//
//  ContentView.swift
//  AWIZ
//
//  Created by swift_user on 22/10/22.
//

import SwiftUI
import AVKit

@available(iOS 16.0, *)
struct ContentView: View {
    
    @Environment(\.scenePhase) var scenePhase
    @AppStorage("exerciseTime") var exerciseTime = 0.0
    @AppStorage("isOnboardingShown") var isOnboardingShown: Bool = true
    @State var streaks = Streaks()
    @State var timer = TimerStruct()
    @State var navigationPath: NavigationPath = NavigationPath()
    @State var exercisePlans = [
        ExercisePlan(title: "Exercise Plan 1", details: "Choose this plan for a more basic workout",
                     exercise: exercise2,
                     exercise2: exercise7,
                     exercise3: exercise10,
                     exercise4: exercise1,
                     exercise5: exercise5
                    ),
        
        ExercisePlan(title: "Exercise Plan 2", details: "Choose this for a medium difficulty workout",
                     exercise: exercise10,
                     exercise2: exercise7,
                     exercise3: exercise5,
                     exercise4: exercise9,
                     exercise5: exercise6
                    ),
        
        ExercisePlan(title: "Exercise Plan 3", details: "Choose this plan for a more intermediate set of workouts (Warning: Only recommended for elderly who regulary exercise/are very active)",
                     exercise: exercise2,
                     exercise2: exercise3,
                     exercise3: exercise6,
                     exercise4: exercise9,
                     exercise5: exercise8
                     ),
        
        ExercisePlan(title: "Exercise Plan 4", details: "Choose this plan for a more advanced workout (Warning: Only recommended for elderly who regulary exercise/are very active)",
                     exercise: exercise3,
                     exercise2: exercise5,
                     exercise3: exercise9,
                     exercise4: exercise4,
                     exercise5: exercise8
                    )
    ]
    
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
    
    func resetTime() {
        exerciseTime = 0.0
    }
    
    func resetExerciseTime(){
        
        let dateComparisionResult:ComparisonResult = NSDate().compare(beginingOfDay)

        if dateComparisionResult == ComparisonResult.orderedDescending || dateComparisionResult == ComparisonResult.orderedSame{
        exerciseTime = 0.0
    }
}
    let beginingOfDay = NSCalendar.current.startOfDay(for: NSDate() as Date)
    
    var body: some View {
        NavigationView {
            NavigationStack(path: $navigationPath) {
                //TabView {
                    HomeView(streak: $streaks, timerStruct: $timer, exercisePlans: $exercisePlans, navigationPath: $navigationPath)
                    .onAppear() {
                        if isNewDay() == true {
                            resetTime()
                        } else if isNewDay() == false {
                            
                        }
                    }
//                        .tabItem {
//                            Label("Home", systemImage: "house.fill")
//                        }
//                    ExerciseView()
//                        .tabItem {
//                            Label("Exercises", systemImage: "figure.walk.circle.fill")
//                        }
                }
            }
            .fullScreenCover(isPresented: $isOnboardingShown) {
                OnboardingView(isOnboardingShown: $isOnboardingShown)
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
