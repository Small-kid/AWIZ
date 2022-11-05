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
            NavigationView {
                LazyHGrid(rows: [row]) {
                    ForEach(exercisePlan) { exercisePlan in
                        NavigationLink {
                            ExercisePlanDetailView()
                        } label: {
                            Text(exercisePlan.title)
                                .foregroundColor(.black)
                                .frame(width: 120, height: 130)
                                .padding()
                                .background((Color(red: 220/255, green: 247/255, blue: 99/255)))
                                .cornerRadius(10)
                        }
                        
                    }
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

