//
//  OnboardingPage3.swift
//  AWIZ
//
//  Created by Wong Jun heng on 26/11/22.
//

import SwiftUI

struct OnboardingPage2: View {
    @Binding var isOnboardingShown: Bool
    var body: some View {
        VStack {
            Image("HomeScreen")
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
                .frame(width: 300)
            Text("This is the home page where you can see how much progress you have made throughout the day with a streak bar to keep track of how many consecutive days you have been exercising.")
                .font(.system(size: 20, weight: .medium, design: .rounded))
                .padding(.top)
        }
        .multilineTextAlignment(.center)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(20)
        .background(
            Color("Onboarding")
                .edgesIgnoringSafeArea(.all)
        )
    }
}

struct OnboardingPage2_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage2(isOnboardingShown: .constant(false))
    }
}
