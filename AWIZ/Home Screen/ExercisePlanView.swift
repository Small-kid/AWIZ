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
    var body: some View {
        
        let row = GridItem(.fixed(50), spacing: 20, alignment: .center)
        
        ScrollView(.horizontal) {
            LazyHGrid(rows: [row]) {
                ForEach(exercisePlans) { exercisePlan in
                    NavigationLink {
                        ExercisePlanDetailView(exercisePlan: exercisePlan)
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                    } label: {
                        Label("", systemImage: "figure.cooldown")
                            .font(.system(size: 30))
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        
                        Text(exercisePlan.title)
                            .font(.system(size: 22))
                            .foregroundColor(.black)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 11))
                    }
                    .frame(width: 140, height: 130)
                    .padding()
                    .background((Color(red: 220/255, green: 247/255, blue: 99/255)))
                    .cornerRadius(10)
                }
                
                //                    .sheet(isPresented: $isSheetPresented) {
                //                        ExercisePlanDetailView(exercisePlan: $exercisePlan)
                
            }
        }
    }
}


struct ExercisePlanView_Previews: PreviewProvider {
    static var previews: some View {
        ExercisePlanView(exercisePlans: .constant([ExercisePlan(title: "Exercise Plan 1", details: "idk", exercise: Exercise(title: "ufje", duration: 5, steps: ""), exercise2: Exercise(title: "jfjfj", duration: 5, steps: ""), exercise3: Exercise(title: "JEu", duration: 10, steps: ""), exercise4: Exercise(title: "fjjf", duration: 5, steps: ""))]))
    }
}
