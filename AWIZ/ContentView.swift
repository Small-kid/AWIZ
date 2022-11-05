//
//  ContentView.swift
//  AWIZ
//
//  Created by swift_user on 22/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView(exerciseTrack: 25)
                .tabItem {
                Label("Home", systemImage: "house.fill")
            }
            ExerciseView()
                .tabItem {
                    Label("Exercises", systemImage: "figure.walk.circle.fill")
                }
            FriendView()
                .tabItem {
                    Label("Friends", systemImage: "person.3.fill")
                }
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
