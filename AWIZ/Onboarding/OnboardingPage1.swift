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
                    .font(.largeTitle)
                    .frame(alignment: .center)
                Text("Let's get you started with a short tutorial of the app")
                    .font(.headline)
                    .frame(alignment: .center)
                
                Text("Swipe left to continue")
                    .font(.subheadline)
            }
            .multilineTextAlignment(.center)
        }
    }
}

struct OnboardingPage1_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage1(isOnboardingShown: .constant(false))
    }
}
