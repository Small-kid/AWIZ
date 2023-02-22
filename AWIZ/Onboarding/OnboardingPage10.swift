//
//  OnboardingPage14.swift
//  AWIZ
//
//  Created by Wong Jun heng on 26/11/22.
//

import SwiftUI

struct OnboardingPage10: View {
    @Binding var isOnboardingShown: Bool
    var body: some View {
        VStack {
            Image(systemName: "house")
                .resizable()
                .scaledToFit()
                .frame(width: 100)
                .padding()
            Text("You have come to the end of the tutorial. Start exercising by pressing the button below to go to the home page.")
                .font(.system(size: 20, weight: .medium, design: .rounded))
            Button {
                isOnboardingShown.toggle()
            } label: {
                Text("Get Started")
            }
            .padding()
            .background(.green)
            .foregroundColor(.black)
            .cornerRadius(10)
            .font(.system(size: 25, weight: .medium, design: .rounded))
        }
        .multilineTextAlignment(.center)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(20)
        .background(
            Color("Onboarding")
                .edgesIgnoringSafeArea(.all))
    }
}

struct OnboardingPage10_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage10(isOnboardingShown: .constant(false))
    }
}
