//
//  TimerView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 18/11/22.
////  With reference from Indetly on Youtube


import SwiftUI

struct TimerView: View {
    @ObservedObject var vm = ViewModel()
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    let width: Double = 250
    
    var body: some View {
        VStack {
            
            Text("Timer: \(vm.time)")
                .font(.system(size: 50, weight: .medium, design: .rounded))
                .alert("Timer done!", isPresented: $vm.showingAlert) {
                    Button("Continue", role: .cancel) {
                        
                    }
                }
                .padding()
            
            HStack(spacing:50) {
                Button("Start") {
                    vm.start(minutes: Float(vm.minutes))
                }
                .padding()
                .background((Color(red: 184/255, green: 243/255, blue: 255/255)))
                .foregroundColor(.black)
                .cornerRadius(10)
                .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 16)))
                //.disabled(vm.isActive)
                
                Button(vm.isActive ? "Pause" : "Resume") {
                    vm.pause()
                    //vm.isActive = false
                    //self.timer.upstream.connect().cancel()
                }
                .padding()
                .foregroundColor(.black)
                .background(vm.isActive ? .red : .green)
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
