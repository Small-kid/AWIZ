//
//  ExercisePlanView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 4/11/22.
//

import SwiftUI

struct ExercisePlanView: View {
    
    @State var isSheetPresented = false
    @State var exercisePlan = [
        ExercisePlan(title: "Exercise Plan 1", details: "Choose this for a light and basic workout", exercise:
        Exercise(title: "Toe touches and Arm Stretches", duration: 5), exercise2: Exercise(title: "ArmCircles", duration: 5), exercise3: Exercise(title: "Calf Raises", duration: 5), exercise4: Exercise(title: "Jog on the Spot", duration: 5)
        ),
        ExercisePlan(title: "Exercise Plan 2", details: "Choose this for a medium difficulty workout", exercise: Exercise(title: "High Knee March", duration: 5), exercise2: Exercise(title: "Stair Exercise", duration: 10), exercise3: Exercise(title: "Chair Exercise", duration: 5), exercise4: Exercise(title: "Lunges", duration: 5)),
//        ExercisePlan(title: "Exercise Plan 2", details: "Choose this plan for a more intermediate set of workouts", exercise: Exercise(title: "Wall Push-ups", duration: <#T##Int#>), exercise2: <#T##Exercise#>, exercise3: <#T##Exercise#>, exercise4: <#T##Exercise#>)
   ]

    var body: some View {
        
        let row = GridItem(.fixed(50), spacing: 20, alignment: .center)
        
        ScrollView(.horizontal) {
                LazyHGrid(rows: [row]) {
                    ForEach($exercisePlan) { $exercisePlan in
                        NavigationLink {
                            ExercisePlanDetailView(exercisePlan: $exercisePlan)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                        } label: {
                            Text(exercisePlan.title)
                                .foregroundColor(.black)
                                .frame(width: 120, height: 130)
                                .padding()
                                .background((Color(red: 220/255, green: 247/255, blue: 99/255)))
                                .cornerRadius(10)
                        }
                        
                    }
//                    .sheet(isPresented: $isSheetPresented) {
//                        ExercisePlanDetailView(exercisePlan: $exercisePlan)
                }
                
            }
            
        }
    }
        

        struct ExercisePlanView_Previews: PreviewProvider {
            static var previews: some View {
                ExercisePlanView()
            }
        }


