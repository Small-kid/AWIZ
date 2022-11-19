//
//  TimerView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 18/11/22.
////  With reference from Indetly on Youtube

import SwiftUI

struct TimerView: View {
    @ObservedObject var vm = ViewModel()
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    let width: Double = 250
    
    var body: some View {
        VStack {
            Text("Timer: \(vm.time)")
                .font(.system(size: 50, weight: .medium, design: .rounded))
                .alert("Timer done!", isPresented: $vm.showingAlert) {
                    Button("Continue", role: .cancel) {
                        // Code
                    }
                }
                .padding()

            HStack(spacing:50) {
                Button("Start") {
                    vm.start(minutes: vm.minutes)
                }
                .padding()
                .background((Color(red: 184/255, green: 243/255, blue: 255/255)))
                .foregroundColor(.black)
                .cornerRadius(10)
                .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 16)))
                
                Button("Pause") {
                    vm.isActive = false
                }
                    .padding()
                    .foregroundColor(.black)
                    .background(.red)
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
