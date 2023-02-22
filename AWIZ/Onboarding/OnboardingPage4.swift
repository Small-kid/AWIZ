//
//  OnboardingPage5.swift
//  AWIZ
//
//  Created by Wong Jun heng on 26/11/22.
//

import SwiftUI

struct OnboardingPage4: View {
    @Binding var isOnboardingShown: Bool
    var body: some View {
        VStack {
            Image("HomeScreen")
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
                .frame(width: 300)
            Text("Scroll to the right to explore various exercise plans and click the green box to start exercising.")
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

struct OnboardingPage4_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage4(isOnboardingShown: .constant(false))
    }
}
