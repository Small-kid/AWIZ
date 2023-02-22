//
//  OnboardingPage1.swift
//  AWIZ
//
//  Created by Wong Jun heng on 26/11/22.
//

import SwiftUI

struct OnboardingPage1: View {
    @Binding var isOnboardingShown: Bool
    var body: some View {
        ZStack {
            Color("Onboarding")
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Welcome to ElderlyFit!")
                    .font(.system(size: 35, weight: .semibold, design: .rounded))
                    .padding(1)
                Text("Get started with a short tutorial of the app")
                    .font(.system(size: 20, weight: .medium, design: .rounded))
                    .padding(1)
                Text("Swipe right to continue")
                    .font(.system(size: 20, weight: .regular, design: .rounded))
                    .padding(1)
                Image(systemName: "arrow.right")
                    .font(.system(size: 50))
            }
            .multilineTextAlignment(.center)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct OnboardingPage1_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage1(isOnboardingShown: .constant(false))
    }
}
