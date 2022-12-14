//
//  OnboardingPage12.swift
//  AWIZ
//
//  Created by Wong Jun heng on 26/11/22.
//

import SwiftUI

struct OnboardingPage12: View {
    @Binding var isOnboardingShown: Bool
    var body: some View {
        VStack {
            Image("CompleteHomescreen")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
            Text("Now that you have completed the exercise plan, your home screen should look like this.")
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

struct OnboardingPage12_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage12(isOnboardingShown: .constant(false))
    }
}
