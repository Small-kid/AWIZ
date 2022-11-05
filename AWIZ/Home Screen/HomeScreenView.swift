//
//  HomeScreenView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 22/10/22.
//

import SwiftUI

struct HomeView: View {
    
    @State var isSheetPresented = false
    @State var exerciseTrack: Double
    func ridzero(result: Double) -> String {
        let value = String(format: "%g", result)
        return value
    }
    
    var body: some View {
        NavigationView {
            GeometryReader { geometry in                ScrollView {
                ZStack {
                    VStack {
                        
                        Text("Welcome back!")
                            .font(.system(size: 25, design: .rounded))
                            .offset(x: -95, y: 25)
                        let percent = Double(exerciseTrack/25)
                        
                        CircularProgressView(progress: CGFloat(percent))
                            .frame(width: 130, height: 130)
                            .offset(x: -95, y: -235)
                            .padding(EdgeInsets(top: 280, leading: 0, bottom: 0, trailing: 0))
                        
                        Text("\(ridzero(result:percent*100))%")
                            .font(.system(size: 30, weight: .bold, design: .rounded))
                            .offset(x:-95, y:-331)
                        
                        Text("\(ridzero(result: exerciseTrack)) mins of exercise completed today")
                            .frame(width: 200, height: 50)
                            .font(.system(size: 20, design: .rounded))
                            .offset(x:90, y:-425)
                        
                        
                        Button {
                            
                            print("Placeholder")
                            
                        } label: {
                            Text("Start excercise")
                                .padding()
                                .background((Color(red: 184/255, green: 243/255, blue: 255/255)))
                                .foregroundColor(.black)
                                .cornerRadius(10)
                                .offset(x: 75, y: -415)
                        }
                        Text("Weekly progress")
                            .bold()
                            .font(.system(size: 25))
                            .offset(x: -85, y: -370)
                            .zIndex(2.0)
                        
                        DateView(exerciseTrack: $exerciseTrack)
                            .offset(x: 18, y: -370)
                        
                        Text("Choose your exercise Plan:")
                            .bold()
                            .font(.system(size: 25))
                            .offset(x: -30, y: -350)
                            .zIndex(1.0)
                        
                        
                        ExercisePlanView()
                            .offset(x: 5, y: -350)
                            .zIndex(-1.0)
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
        HomeView(exerciseTrack: 9)
    } 
}
