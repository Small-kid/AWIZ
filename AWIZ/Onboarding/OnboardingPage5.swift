//
//  OnboardingPage6.swift
//  AWIZ
//
//  Created by Wong Jun heng on 26/11/22.
//

import SwiftUI

struct OnboardingPage5: View {
    @Binding var isOnboardingShown: Bool
    var body: some View {
        VStack {
            Image("DetailView")
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
                .frame(width: 300)
            Text("When you click on an exercise plan, it will show you more details of the plan like the type of exercises, duration and description for the exercise plan. ")
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

struct OnboardingPage5_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage5(isOnboardingShown: .constant(false))
    }
}
