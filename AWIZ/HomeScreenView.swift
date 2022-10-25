//
//  HomeScreenView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 22/10/22.
//

import SwiftUI

struct HomeView: View {
    
    var percent: Double
    func ridzero(result: Double) -> String {
            let value = String(format: "%g", result)
            return value
    }
    
    var body: some View {
        VStack {

            CircularProgressView(progress: CGFloat(percent))
                .frame(width: 150, height: 150)
                .offset(x: -95, y: -260)
                       
            Text("\(ridzero(result:percent*100))%")
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .offset(x:-95, y:-355)
            }
        }
    }


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(percent: 0.19)
    }
}
