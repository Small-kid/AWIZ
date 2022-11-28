//
//  TimerView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 18/11/22.
////  With reference from Indetly on Youtube

import AVKit
import SwiftUI

struct TimerView: View {
    
    @State var player = AVPlayer()
    @State var presentAlert = false
    @AppStorage("exerciseTime") var exerciseTime = 0.0
    @State var navigationPath = NavigationPath()
    @Binding var streaks: Streaks
    @Binding var timerStruct: TimerStruct
    let timer = Timer.publish(every: 1,tolerance: 0.5, on: .main, in: .common).autoconnect()
    
    func format(seconds: Int) -> String { String(format:"%d:%02d", seconds / 60, seconds % 60) }
    
    func reset() {
        timerStruct.countdownTimer = 300
        timerStruct.timerRunning = false
    }
    func resetData() {
        exerciseTime = 0
    }
    
    
    
    var body: some View {
        VStack {
            Text("Time: \(format(seconds: timerStruct.countdownTimer))")
                .padding()
                .onReceive(timer) { _ in
                    if timerStruct.countdownTimer > 0 && timerStruct.timerRunning == true {
                        timerStruct.countdownTimer -= 1
                        exerciseTime += 1.0
                    } else {
                        timerStruct.timerRunning = false
                        if timerStruct.countdownTimer <= 0, timerStruct.timerRunning == false {
                            timerStruct.isAlertpresented = true
                            reset()
                        }
                    }
                    
                }
                .font(.system(size: 30))
                .alert("Timer done! Move on to the next exercise by pressing the button below!", isPresented: $timerStruct.isAlertpresented) {}
            
            HStack(spacing:30) {
                Button(timerStruct.timerRunning ? "Reset" : "Start") {
                    if timerStruct.timerRunning == true {
                        reset()
                    } else if timerStruct.timerRunning == false {
                        timerStruct.timerRunning = true
                        player.play()
                    }
                }
                .padding()
                .background(.green)
                .foregroundColor(.black)
                .cornerRadius(10)
                .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 20)))
                
                Button(timerStruct.timerRunning ? "Pause" : "Resume") {
                    if timerStruct.timerRunning == true {
                        timerStruct.timerRunning = false
                    } else if timerStruct.timerRunning == false {
                        timerStruct.timerRunning = true
                    }
                    
                }
                .padding()
                .foregroundColor(.black)
                .background(.red)
                .cornerRadius(10)
                .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 20)))
                
            }
            
        }
    }
}



struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView(streaks: .constant(Streaks()), timerStruct: .constant(TimerStruct()))
    }
}
