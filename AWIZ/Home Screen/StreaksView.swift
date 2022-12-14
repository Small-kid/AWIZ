//
//  StreaksView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 12/11/22.
//

import SwiftUI

struct StreaksView: View {
    
    @AppStorage("currentStreak") var currentStreak = 0
    @AppStorage("highestStreak") var highestStreak = 1
    @Binding var timer: TimerStruct
    @Binding var streak: Streaks
    
    
    var body: some View {
        VStack (alignment: .leading) {
            Rectangle()
                .cornerRadius(20)
                .frame(width: 380, height: 125)
                .shadow(radius: 5)
                .foregroundColor(.white)
            
            Text("Current Streak: \(currentStreak) days")
                .font(.system(size: 25))
                .foregroundColor(Color("streaksColour"))
                .offset(x: 20, y: -120)
                
            
            Text("Highest Streak: \(highestStreak-1) days")
                .font(.system(size: 25))
                .foregroundColor(Color("streaksColour"))
                .offset(x: 20, y: -120)
                
            
            ProgressView(value: CGFloat(currentStreak), total: CGFloat(highestStreak))
                .padding()
                .frame(width: 370)
                .scaleEffect(x:1, y: 6)
                .tint((Color(red: 184/255, green: 243/255, blue: 255/255)))
                .cornerRadius(20)
                .offset(x: 0, y: -130)
                
        }
    }
}


struct StreaksView_Previews: PreviewProvider {
    static var previews: some View {
        StreaksView(timer: .constant(TimerStruct()), streak: .constant(Streaks()))
    }
}
