//
//  HomeScreenView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 22/10/22.
//

import SwiftUI

struct HomeView: View {
    
    var percent: Double
    var exerciseTrack: Int
    func ridzero(result: Double) -> String {
            let value = String(format: "%g", result)
            return value
    }
    
    var body: some View {
            VStack {

                CircularProgressView(progress: CGFloat(percent))
                    .frame(width: 130, height: 130)
                    .offset(x: -95, y: -235)
                           
                Text("\(ridzero(result:percent*100))%")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .offset(x:-95, y:-331)
                
                Text("\(exerciseTrack) mins/25 mins of exercise completed today")
                    .frame(width: 200, height: 50)
                    .font(.system(size: 17, design: .rounded))
                    .offset(x:95, y:-425)
                
        
        Button {
            
            print("Placeholder")
            
        } label: {
            Text("Start excercise")
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
                .offset(x: 75, y: -415)
        }

            }
        
        }
    }


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(percent: 0.48, exerciseTrack: 12)
    } 
}
