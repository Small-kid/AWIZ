//
//  TimerView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 18/11/22.
////  With reference from Indetly on Youtube

import SwiftUI

struct TimerView: View {
    
    @Binding var timerStruct: TimerStruct
    let timer = Timer.publish(every: 1, tolerance: 0.5, on: .main, in: .common).autoconnect()
    
    func format(seconds: Int) -> String { String(format:"%d:%02d", seconds / 60, seconds % 60) }
    
    func reset() {
        timerStruct.countdownTimer = 300
        timerStruct.timerRunning = false
    }
    
    
    var body: some View {
        VStack {
            Text("Time: \(format(seconds: timerStruct.countdownTimer))")
                    .padding()
                    .onReceive(timer) { _ in
                        if timerStruct.countdownTimer > 0 && timerStruct.timerRunning {
                            timerStruct.countdownTimer -= 1
                            timerStruct.exerciseTime += 1.0
                        } else {
                            timerStruct.timerRunning = false
                            if timerStruct.countdownTimer <= 0, timerStruct.timerRunning == false {
                                timerStruct.isAlertpresented = true
                                reset()
                            }
                        }
                        
                    }
                    .font(.system(size: 30))
                    .alert("Timer done! Press the button below to go to the next exercise", isPresented: $timerStruct.isAlertpresented) {}
                
                HStack(spacing:30) {
                    Button(timerStruct.timerRunning ? "Reset" : "Start") {
                        if timerStruct.timerRunning == true {
                            reset()
                        } else {
                            timerStruct.timerRunning = true
                        }
                    }
                    .padding()
                    .background((Color(red: 184/255, green: 243/255, blue: 255/255)))
                    .foregroundColor(.black)
                    .cornerRadius(10)
                    .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 16)))
                    
                    Button(timerStruct.timerRunning ? "Pause" : "Resume") {
                        if timerStruct.timerRunning == true {
                            timerStruct.timerRunning = false
                        } else {
                            timerStruct.timerRunning = true
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
        TimerView(timerStruct: .constant(TimerStruct()))
    }
}
