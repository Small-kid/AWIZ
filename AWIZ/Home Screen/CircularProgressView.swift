//
//  CircularProgressView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 22/10/22.
//

import SwiftUI

struct CircularProgressView: View {
    
    @AppStorage("exerciseTime") var exerciseTime = 0.0
    @Binding var timer: TimerStruct
   var progress: CGFloat
    func ridzero(result: Double) -> String {
        let value = String(format: "%g", result)
        return value
    }
    func ridZero(result: Double) -> String {
        let value = String(format: "%g", result)
        return value
    }
    func round(result: Double) -> String {
        let value = String(format: "%.1f", result)
        return value
    }
    var body: some View {
        ZStack {
            let percent = Double(exerciseTime/1500)
            Circle()
                .stroke(lineWidth: 20)
                .foregroundColor(Color(red: 240/255, green: 162/255, blue: 2/255))
            
            Circle()
                .trim(from: 0, to: progress)
                .stroke(style: .init(lineWidth: 20.0, lineCap: .round, lineJoin: .round))
                .foregroundColor(Color(red: 220/255, green: 247/255, blue: 99/255))
                .rotationEffect(Angle(degrees: 270))
            
            Text("\(round(result:percent*100))%")
                .font(.system(size: 30, weight: .bold, design: .rounded))
        }
    }
}

struct CircularProgressView_Previews: PreviewProvider {
    static var previews: some View {
        CircularProgressView(timer: .constant(TimerStruct()), progress: 0.25)
    }
}
