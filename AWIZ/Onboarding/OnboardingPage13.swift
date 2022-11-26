//
//  OnboardingPage13.swift
//  AWIZ
//
//  Created by Wong Jun heng on 26/11/22.
//
import AVKit
import SwiftUI

struct OnboardingPage13: View {
    @Binding var isOnboardingShown: Bool
    @State var player = AVPlayer()
    var body: some View {
        VStack {
            VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "TutorialVideo" , withExtension: "mp4")!))
                .scaledToFit()
                .edgesIgnoringSafeArea(.all)
            
            Text("Here is a short video tutorial going through how one would use the app.")
                .fixedSize(horizontal: false, vertical: true)
                .font(.system(size: 21, weight: .medium))
            
        }
        .multilineTextAlignment(.center)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(20)
        .background(
            Color("Onboarding")
                .edgesIgnoringSafeArea(.all))
    }
}

struct OnboardingPage13_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage13(isOnboardingShown: .constant(false))
    }
}
