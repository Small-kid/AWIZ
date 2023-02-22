//
//  OnboardingPage4.swift
//  AWIZ
//
//  Created by Wong Jun heng on 26/11/22.
//

import SwiftUI

struct OnboardingPage3: View {
    @Binding var isOnboardingShown: Bool
    var body: some View {
        VStack {
            Image("HomeScreen")
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
                .frame(width: 300)
            Text("Press the blue [Start Exercise] button at the top to select the default exercise plan. Alternatively, go to the bottom to choose you own exercise plan by selecting the corresponding green box.")
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

struct OnboardingPage3_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage3(isOnboardingShown: .constant(false))
    }
}
