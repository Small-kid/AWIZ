//
//  OnboardingPage5.swift
//  AWIZ
//
//  Created by Wong Jun heng on 26/11/22.
//

import SwiftUI

struct OnboardingPage5: View {
    @Binding var isOnboardingShown: Bool
    var body: some View {
        VStack {
            Image("HomeScreen")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
            Text("Scroll right to see the selction of exercise plans and click on the yellow box to get started ")
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


struct OnboardingPage5_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage5(isOnboardingShown: .constant(false))
    }
}
