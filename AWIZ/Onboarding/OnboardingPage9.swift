//
//  OnboardingPage9.swift
//  AWIZ
//
//  Created by Wong Jun heng on 26/11/22.
//

import SwiftUI

struct OnboardingPage9: View {
    @Binding var isOnboardingShown: Bool
    var body: some View {
        VStack {
            Image("ExerciseScreen")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
            Text("This is the exercise page!")
                .fixedSize(horizontal: false, vertical: true)
                .font(.system(size: 21, weight: .medium))
            
            Text("Scroll left to access the other exercise in the exercise plan")
                .fixedSize(horizontal: false, vertical: true)
                .font(.system(size: 21, weight: .medium))
            
            Text("Use the [Start] button below to start the timer and click on the video itself to play the video.")
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

struct OnboardingPage9_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage9(isOnboardingShown: .constant(false))
    }
}
