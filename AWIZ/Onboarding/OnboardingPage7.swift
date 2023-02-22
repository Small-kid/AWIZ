//
//  OnboardingPage9.swift
//  AWIZ
//
//  Created by Wong Jun heng on 26/11/22.
//

import SwiftUI

struct OnboardingPage7: View {
    @Binding var isOnboardingShown: Bool
    var body: some View {
        VStack {
            Image("ExerciseScreen")
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
                .frame(width: 300)
            Text("To navigate the exercise page, watch the exercise demonstration video before scrolling down to view the exercise steps. Swipe right to access the exercise plan's remaining exercises.")
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

struct OnboardingPage7_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage7(isOnboardingShown: .constant(false))
    }
}
