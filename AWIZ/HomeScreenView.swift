//
//  HomeScreenView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 22/10/22.
//

import SwiftUI

struct HomeView: View {
    
    @State var exerciseTrack: Double
    func ridzero(result: Double) -> String {
            let value = String(format: "%g", result)
            return value
    }
    
    var body: some View {
            VStack {
                
            let percent = Double(exerciseTrack/25)
                
                CircularProgressView(progress: CGFloat(percent))
                    .frame(width: 130, height: 130)
                    .offset(x: -95, y: -235)
                    .padding(EdgeInsets(top: 100, leading: 0, bottom: 0, trailing: 0))
                           
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

                
            }
        
        }
    }


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(exerciseTrack: 9)
    } 
}
