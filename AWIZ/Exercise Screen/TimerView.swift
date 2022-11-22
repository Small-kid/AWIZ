//
//  TimerView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 18/11/22.
////  With reference from Indetly on Youtube


import SwiftUI

struct TimerView: View {
    
    @State var isAlertpresented = false
    @State var countdownTimer = 300
    @State var timerRunning = false
    @State var isPaused = false
    @State var isActive = false
    let timer = Timer.publish(every: 1, tolerance: 0.5, on: .main, in: .common).autoconnect()
    
    func format(seconds: Int) -> String { String(format:"%d:%02d", seconds / 60, seconds % 60) }
    
    func reset() {
        countdownTimer = 300
        timerRunning = false
    }
    
    
    var body: some View {
        VStack {
                Text("Time: \(format(seconds: countdownTimer))")
                    .padding()
                    .onReceive(timer) { _ in
                        if countdownTimer > 0 && timerRunning {
                            countdownTimer -= 1
                        } else {
                            timerRunning = false
                            if countdownTimer <= 0, timerRunning == false {
                                isAlertpresented = true
                                reset()
                            }
                        }
                        
                    }
                    .font(.system(size: 30))
                    .alert("Timer done! Press the button below to go to the next exercise", isPresented: $isAlertpresented) {}
                
                HStack(spacing:30) {
                    Button(timerRunning ? "Reset" : "Start") {
                        if timerRunning == true {
                            reset()
                        } else {
                            timerRunning = true
                        }
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
