//
//  OnboardingPage8.swift
//  AWIZ
//
//  Created by Wong Jun heng on 26/11/22.
//

import SwiftUI

struct OnboardingPage6: View {
    @Binding var isOnboardingShown: Bool
    var body: some View {
        VStack {
            Image("DetailView2")
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
                .frame(width: 300)
            Text("Press the [Start exercise] button below to begin your exercise.")
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

struct OnboardingPage6_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage6(isOnboardingShown: .constant(false))
    }
}
