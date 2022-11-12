//
//  StreaksView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 12/11/22.
//

import SwiftUI

struct StreaksView: View {
    @State var currentStreak: Int
    @State var highestStreak: Int
    var body: some View {
        VStack {
            
            Rectangle()
                            .cornerRadius(20)
                            .frame(width: 375, height: 100)
                            .shadow(radius: 5)
                            .foregroundColor(.white)
                            .offset(x: 0, y: -80 )
            
            Text("Current Streak: \(currentStreak) days")
                .font(.system(size: 15, weight: .bold))
                .offset(x:-82, y: -170)
            
            Text("Highest Streak: \(highestStreak) days")
                .font(.system(size: 15, weight: .bold))
                .offset(x:-80, y: -165)
            
            ProgressView(value: 10, total: 25)
                .padding()
                .frame(width: 350)
                .scaleEffect(x:1, y: 4)
                .cornerRadius(20)
                .tint((Color(red: 184/255, green: 243/255, blue: 255/255)))
                .offset(x:-12, y: -175)
        }
    }
}

struct StreaksView_Previews: PreviewProvider {
    static var previews: some View {
        StreaksView(currentStreak: 10, highestStreak: 40)
    }
}
