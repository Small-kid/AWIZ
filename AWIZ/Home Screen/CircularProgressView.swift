//
//  CircularProgressView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 22/10/22.
//

import SwiftUI

struct CircularProgressView: View {
    
    var progress: CGFloat
    
    var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: 20)
                .foregroundColor(Color(red: 240/255, green: 162/255, blue: 2/255))
            
            Circle()
                .trim(from: 0, to: progress)
                .stroke(style: .init(lineWidth: 20.0,
                                     lineCap: .round,
                                     lineJoin: .round))
                .foregroundColor(Color(red: 220/255, green: 247/255, blue: 99/255))
                .rotationEffect(Angle(degrees: 270))
        }
    }
}

struct CircularProgressView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProgressView(progress: 0.25)
    }
}
