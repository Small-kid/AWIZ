//
//  TimerView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 18/11/22.
////  With reference from Indetly on Youtube

import Foundation
import SwiftUI

struct TimerView: View {
    @State var countdownTimer = 300
    @State var timerRunning = false
    let timer = Timer.publish(every: 1, tolerance: 0.5, on: .main, in: .common).autoconnect()
    
    func format(result: Int) -> String {
        let value = String(format:"%d:%02d", countdownTimer)
        return value
    }
    
    
    
    var body: some View {
        VStack {
            Text("Time: \(format(result: countdownTimer))")
                .padding()
                .onReceive(timer) { _ in
                    if countdownTimer > 0 && timerRunning {
                        countdownTimer -= 1
                    } else {
                        timerRunning = false
                    }
                    
                }
                .font(.system(size: 30))
            
            HStack(spacing:30) {
                Button(timerRunning ? "Reset" : "Start") {
                    timerRunning = true
                    countdownTimer = 300
                }
                .padding()
                .background((Color(red: 184/255, green: 243/255, blue: 255/255)))
                .foregroundColor(.black)
                .cornerRadius(10)
                .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 16)))
                
                Button(timerRunning ? "Pause" : "Resume") {
                    if timerRunning == true {
                        timerRunning = false
                    } else {
                        timerRunning = true
                    }
                    
                }
                .padding()
                .foregroundColor(.black)
                .background(.red)
                .cornerRadius(10)
                .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 16)))
            }
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
