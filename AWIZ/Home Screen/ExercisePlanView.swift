//
//  ExercisePlanView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 4/11/22.
//

import SwiftUI

struct ExercisePlanView: View {

    @State var isSheetPresented = false
    @Binding var exercisePlans: [ExercisePlan]
//
    var body: some View {

        let row = GridItem(.fixed(50), spacing: 20, alignment: .center)

        ScrollView(.horizontal) {
                       LazyHGrid(rows: [row]) {
                           ForEach(exercisePlans) { exercisePlan in
                               NavigationLink {
                                   ExercisePlanDetailView(exercisePlan: exercisePlan)
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


//        struct ExercisePlanView_Previews: PreviewProvider {
//            static var previews: some View {
//                ExercisePlanView(exercisePlans: .constant([ExercisePlan(title: "1", details: "1", exercise: "1", exercise2: "1", exercise3: "1", exercise4: "1")]))
//            }
//        }
//
//
