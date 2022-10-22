//
//  PercentView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 22/10/22.
//

import SwiftUI

struct PercentView: View {
    
    var percent: Double
    
    var body: some View {
        VStack {
            CircularProgressView(progress: CGFloat(percent))
                //.frame(width: 150, height: 150)
                       
            Text("\(percent)")
                .font(.system(size: 60, weight: .bold, design: .rounded))
                .offset(y:-390)
        }
    }
}

struct PercentView_Previews: PreviewProvider {
    static var previews: some View {
        PercentView(percent: 0.39)
    }
}
