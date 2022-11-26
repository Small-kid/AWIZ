//
//  OnboardingPage10.swift
//  AWIZ
//
//  Created by Wong Jun heng on 26/11/22.
//

import SwiftUI

struct OnboardingPage10: View {
    var body: some View {
        VStack {
            Image("HomeButton")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
            Text("Once you are done with the exercise plan, press the button [Mark exercise plan as complete] to mark the exercise plan as complete and return to the home screen")
                .fixedSize(horizontal: false, vertical: true)
                .font(.system(size: 21, weight: .medium))

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
        OnboardingPage10()
    }
}
