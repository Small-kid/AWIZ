//
//  ExercisePlanView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 4/11/22.
//

import SwiftUI

struct ExercisePlanView: View {
    let exercisePlan = [
        ExercisePlan(title: "Exercise plan #1", details: "Czhoose this plan to aid muscle revoery after an injury and improve."),
        ExercisePlan(title: "Exercise plan #2", details: "Choose this plan to help strengthen your muscles in general."),
        ExercisePlan(title: "Exercise plan #3", details: "Choose this plan to help with mobility issues in general."),
        ExercisePlan(title: "ExercisePlan #4", details: "Choose this plan for more advanced exercises if you are already active.")
    ]
    //@State var isSheetPresented: Bool = false
    var body: some View {
        let row = GridItem(.fixed(50), spacing: 20, alignment: .center)
        ScrollView(.horizontal) {
            LazyHGrid(rows: [row]) {
                ForEach(exercisePlan) { exercisePlan in
                    Text(exercisePlan.title)
                        .frame(width: 120, height: 130)
                        .padding()
                        .background((Color(red: 240/255, green: 162/255, blue: 2/255)))
                        .cornerRadius(10)
                        
                }
            }
        }
        
    }
        
        
        
        struct ExercisePlanView_Previews: PreviewProvider {
            static var previews: some View {
                ExercisePlanView()
            }
        }
    }

