//
//  HomeScreenView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 22/10/22.
//

import SwiftUI

struct HomeView: View {
    
    var percent: Double
    
    var body: some View {
        VStack {
            CircularProgressView(progress: CGFloat(percent))
                .frame(width: 140, height: 140)
                .offset(x: -95, y: -260)
                       
            Text("\(percent)")
                .font(.system(size: 23, weight: .bold, design: .rounded))
                .offset(x:-95, y:-355)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(percent: 0.19)
    }
}
