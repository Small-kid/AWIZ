//
//  StreaksView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 12/11/22.
//

import SwiftUI

struct StreaksView: View {
    @Binding var timer: TimerStruct
    @Binding var streak: Streaks
    @ObservedObject var streaks: StreaksManager
    
    
    var body: some View {
        VStack (alignment: .leading) {
            Rectangle()
                .cornerRadius(20)
                .frame(width: 380, height: 100)
                .shadow(radius: 5)
                .foregroundColor(.white)
            
            Text("Current Streak: \($streaks.currentStreak) days")
                .font(.system(size: 20))
                .foregroundColor(Color("streaksColour"))
                .offset(x: 20, y: -100)
                
            
            Text("Highest Streak: \($streaks.highestStreak-1) days")
                .font(.system(size: 20))
                .foregroundColor(Color("streaksColour"))
                .offset(x: 20, y: -95)
                
            
            ProgressView(value: CGFloat(streak.currentStreak), total: CGFloat(streak.highestStreak))
                .padding()
                .frame(width: 370)
                .scaleEffect(x:1, y: 4)
                .tint((Color(red: 184/255, green: 243/255, blue: 255/255)))
                .cornerRadius(20)
                .offset(x: 0, y: -110)
                
        }
    }
}


struct StreaksView_Previews: PreviewProvider {
    static var previews: some View {
        StreaksView(timer: .constant(TimerStruct()), streak: .constant(Streaks()))
    }
}
