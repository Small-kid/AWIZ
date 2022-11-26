//
//  OnboardingPage4.swift
//  AWIZ
//
//  Created by Wong Jun heng on 26/11/22.
//

import SwiftUI

struct OnboardingPage4: View {
    var body: some View {
        VStack {
            Image("HomeScreen")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
            Text("Click on the [Start Exercise] button at the top to select the default exercis plan. Or go down to the bottom to choose you own exercise plan by selecting the corresponding yellow box. ")
                .fixedSize(horizontal: false, vertical: true)
                .font(.system(size: 21, weight: .medium))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(20)
        .background(
            Color("Onboarding")
                .edgesIgnoringSafeArea(.all))
        }
    }


struct OnboardingPage4_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage4()
    }
}
