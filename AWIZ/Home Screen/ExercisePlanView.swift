//
//  ExercisePlanView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 4/11/22.
//

import SwiftUI

struct ExercisePlanView: View {
    
    @State var isSheetPresented = false
    let exercisePlan = [
        ExercisePlan(title: "Exercise Plan 1", details: "Choose this for a light and basic workout", exercise: Exercise(title: "Toe touches and Arm Stretches", duration: 5))
    ]

    var body: some View {
        
        let row = GridItem(.fixed(50), spacing: 20, alignment: .center)
        
        ScrollView(.horizontal) {
                LazyHGrid(rows: [row]) {
                    ForEach(exercisePlan) { exercisePlan in
                        NavigationLink {
                            ExercisePlanDetailView()
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                            //isSheetPresented = true
                        } label: {
                            Text(exercisePlan.title)
                                .foregroundColor(.black)
                                .frame(width: 120, height: 130)
                                .padding()
                                .background((Color(red: 220/255, green: 247/255, blue: 99/255)))
                                .cornerRadius(10)
                        }
                        
                    }
                    .sheet(isPresented: $isSheetPresented) {
                        ExercisePlanDetailView()
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

