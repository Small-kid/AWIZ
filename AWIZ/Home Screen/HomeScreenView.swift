//
//  HomeScreenView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 22/10/22.
//

import SwiftUI

struct HomeView: View {
    
    @State var isSheetPresented = false
    //@State var exerciseIsCompleted = false
    @State var exerciseTrack: Double
    @State var currentStreak: Int
    @State var highestStreak: Int
    @Binding var exercisePlans: [ExercisePlan]
    
    func ridzero(result: Double) -> String {
        let value = String(format: "%g", result)
        return value
    }
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in
                ScrollView {
                    ZStack {
                        VStack {
                            let percent = Double(exerciseTrack/25)
                            Text("Welcome back to ElderlyFit")
                                .font(.system(size: 25,weight: .medium, design: .rounded))
                                .offset(x: 0, y: 20)
                            
                            CircularProgressView(progress: CGFloat(percent))
                                .frame(width: 150, height: 150)
                                .offset(x: -95, y: -240)
                                .padding(EdgeInsets(top: 280, leading: 0, bottom: 0, trailing: 0))
                            
                            Text("\(ridzero(result:percent*100))%")
                                .font(.system(size: 30, weight: .bold, design: .rounded))
                                .offset(x:-92, y:-345)
                            
                            Text("\(ridzero(result: exerciseTrack)) mins of exercise completed today")
                                .frame(width: 200, height: 50)
                                .font(.system(size: 20, design: .rounded))
                                .offset(x:100, y:-445)
                            
                            
                            Button {
                                
                                print("Placeholder")
                                
                            } label: {
                                Text("Start last exercise")
                            }
                            .padding()
                            .background((Color(red: 184/255, green: 243/255, blue: 255/255)))
                            .foregroundColor(.black)
                            .cornerRadius(10)
                            .offset(x: 92, y: -430)
                            .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 16)))
                            
                            StreaksView(currentStreak: 10, highestStreak: 40)
                                .offset(x:0, y: -365)
                            
                            Text("Choose your exercise plan:")
                                .bold()
                                .font(.system(size: 25))
                                .offset(x: -30, y: -440)
                                .zIndex(1.0)
                            
                            
                            ExercisePlanView( exercisePlans: $exercisePlans)
                                .offset(x: 15, y: -425)
                                .zIndex(-1.0)
                                .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 15)))
                            
                            //.frame(maxWidth: .infinity, maxHeight: .infinity)
                            
                        }
                        .frame(width: geometry.size.width)
                        .edgesIgnoringSafeArea(.all)
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(exerciseTrack: 9,currentStreak: 10, highestStreak: 40, exercisePlans: .constant([ExercisePlan(title: "Exercise Plan 1", details: "idk", exercise: Exercise(title: "ufje", duration: 5, steps: ""), exercise2: Exercise(title: "jfjfj", duration: 5, steps: ""), exercise3: Exercise(title: "JEu", duration: 10, steps: ""), exercise4: Exercise(title: "fjjf", duration: 5, steps: ""))]))
    }
}
