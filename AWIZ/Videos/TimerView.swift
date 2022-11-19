//
//  TimerView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 18/11/22.
//

import SwiftUI

struct TimerView: View {
    
    @State var timeRemaining = 360
    let timer = Timer.publish(every: 1, tolerance: 0.5, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            Text("Time: \(timeRemaining)")
                .onReceive(timer) { _ in
                    if timeRemaining > 0 {
                        timeRemaining -= 1
                    }
                    else {
                        timeRemaining = 360
                    }
                }
            Button {
                    self.timer.upstream.connect().cancel()
            } label: {
                Text("Start Exercise")
            }
            .padding()
            .background((Color(red: 184/255, green: 243/255, blue: 255/255)))
            .foregroundColor(.black)
            .cornerRadius(10)
            .shadow(radius: 5)
            .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 16)))
            
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
