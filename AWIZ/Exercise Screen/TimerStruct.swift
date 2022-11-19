//
//  TimerStruct.swift
//  AWIZ
//
//  Created by Wong Jun heng on 19/11/22.
////  With reference from Indetly on Youtube

import Foundation

extension TimerView {
    final class ViewModel: ObservableObject {
        @Published var isActive = false
        @Published var showingAlert = false
        @Published var time: String = "5:00"
        @Published var minutes: Float = 5.0 {
            didSet {
                self.time = "\(Int(minutes)):00"
            }
        }
        var initialTime = 0
        var endDate = Date()
        var pauseDate = Date()
        var pauseInterval = 0.0
        
        // Start the timer with the given amount of minutes
        func start(minutes: Float) {
            self.initialTime = 5
            self.reset()
            self.endDate = Date()
            self.endDate = Calendar.current.date(byAdding: .minute, value: self.initialTime, to: endDate)!
            self.isActive = true
        }
        
        // Reset the timer
        func reset() {
            self.isActive = false
            self.pauseInterval = 0.0
            self.minutes = Float(initialTime)
            self.time = "\(Int(minutes)):00"
        }
        
        func pause() {
            if self.isActive {
                pauseDate = Date()
            } else {
                // keep track of the total time we're paused
                pauseInterval += Date().timeIntervalSince(pauseDate)
            }
            self.isActive.toggle()
        }
        
        // Show updates of the timer
        func updateCountdown(){
            guard isActive else { return }
            
            // Gets the current date and makes the time difference calculation
            let now = Date()
            let diff = endDate.timeIntervalSince1970 + self.pauseInterval - now.timeIntervalSince1970
            
            // Checks that the countdown is not <= 0
            if diff <= 0 {
                self.isActive = false
                self.time = "0:00"
                self.showingAlert = true
                return
            }
            
            // Turns the time difference calculation into sensible data and formats it
            let date = Date(timeIntervalSince1970: diff)
            let calendar = Calendar.current
            let minutes = calendar.component(.minute, from: date)
            let seconds = calendar.component(.second, from: date)
            
            // Updates the time string with the formatted time
            //self.minutes = Float(minutes)
            self.time = String(format:"%d:%02d", minutes, seconds)
        }
    }
}
