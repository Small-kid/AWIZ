//
//  OnboardingPage13.swift
//  AWIZ
//
//  Created by Wong Jun heng on 26/11/22.
//
import AVKit
import SwiftUI

struct OnboardingPage9: View {
    @Binding var isOnboardingShown: Bool
    @State var player = AVPlayer()
    var body: some View {
        VStack {
            VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "TutorialVideo" , withExtension: "mp4")!))
                .scaledToFit()
                .cornerRadius(10)
            Text("Here is a short video tutorial going through how one would use the app.")
                .font(.system(size: 20, weight: .medium, design: .rounded))
                .padding(.top)
        }
        .multilineTextAlignment(.center)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(20)
        .background(
            Color("Onboarding")
                .edgesIgnoringSafeArea(.all))
    }
}

struct OnboardingPage9_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage9(isOnboardingShown: .constant(false))
    }
}
