//
//  OnboardingPage11.swift
//  AWIZ
//
//  Created by Wong Jun heng on 26/11/22.
//

import SwiftUI

struct OnboardingPage11: View {
    @Binding var isOnboardingShown: Bool
    var body: some View {
        VStack {
            Image("Alert")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
            Text("If you want to exit to the home screen but don't want to mark the exercise plan as complete, press the [Don't complete exercise plan] button.")
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


struct OnboardingPage11_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage11(isOnboardingShown: .constant(false))
    }
}
