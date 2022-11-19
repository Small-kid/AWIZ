//
//  TimerView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 18/11/22.
//

import SwiftUI

struct TimerView: View {
    @StateObject var vm = ViewModel()
    let timer = Timer.publish(every: 1, tolerance: 0.5, on: .main, in: .common).autoconnect()
     let width: Double = 250
    
    var body: some View {
        VStack {
            Text("Time: \(vm.time)")
                .font(.system(size: 40, weight: .medium, design: .rounded))
                .alert("Timer done!", isPresented: $vm.showingAlert) {
                    Button("Continue", role: .cancel) {
                        
                    }
                }
                .padding()
               // .background(.thinMaterial)
                .cornerRadius(20)
//                .overlay(
//                      RoundedRectangle(cornerRadius: 20)
//                         .stroke(Color.gray, lineWidth: 4)
//                    )
            
            Slider(value: $vm.minutes, in: 1...10, step: 1)
                .padding()
                .disabled(vm.isActive)
                .animation(.easeInOut, value: vm.minutes)
                .frame(width: width)

            HStack(spacing: 50) {
                Button("Start") {
                    vm.start(minutes: vm.minutes)
                }
                .padding()
                .background((Color(red: 184/255, green: 243/255, blue: 255/255)))
                .foregroundColor(.black)
                .cornerRadius(10)
                .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 16)))
                .disabled(vm.isActive)
                
                Button("Reset", action: vm.reset)
                    .tint(.red)
                    .padding()
                    .background((Color(red: 184/255, green: 243/255, blue: 255/255)))
                    .cornerRadius(10)
                    .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 16)))
            }
            .frame(width: width)
        }
        .onReceive(timer) { _ in
            vm.updateCountdown()
        }
        
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
