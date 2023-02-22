//
//  OnboardingPage10.swift
//  AWIZ
//
//  Created by Wong Jun heng on 26/11/22.
//

import SwiftUI

struct OnboardingPage8: View {
    @Binding var isOnboardingShown: Bool
    var body: some View {
        VStack {
            Image("HomeButton")
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
                .frame(width: 300)
            Text("After finishing the exercises, press the blue [Mark exercise plan as complete] button to complete the exercise plan and return to the home page.")
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

struct OnboardingPage8_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage8(isOnboardingShown: .constant(false))
    }
}
