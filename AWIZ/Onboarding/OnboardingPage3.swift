//
//  OnboardingPage3.swift
//  AWIZ
//
//  Created by Wong Jun heng on 26/11/22.
//

import SwiftUI

struct OnboardingPage3: View {
    var body: some View {
        VStack {
            Image("HomeScreen")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
            Text("This is your home screen where you can see how much progress you have made throughout the day as well as a streaks bar to keep track of how many days straight you have been exercising.")
                .fixedSize(horizontal: false, vertical: true)
                .font(.system(size: 21, weight: .medium))
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
struct OnboardingPage3_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage3()
    }
}
