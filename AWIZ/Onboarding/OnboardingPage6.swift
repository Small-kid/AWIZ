//
//  OnboardingPage6.swift
//  AWIZ
//
//  Created by Wong Jun heng on 26/11/22.
//

import SwiftUI

struct OnboardingPage6: View {
    var body: some View {
        VStack {
            Image("DetailView")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
            Text("When you click on an exercise plan, it will show you more details of the plan like the type of exercises, duration and description for the exercise plan. ")
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

struct OnboardingPage6_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage6()
    }
}
