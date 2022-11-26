//
//  OnboardingView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 18/11/22.
//

import SwiftUI

struct OnboardingView: View {
    @Binding var isOnboardingShown: Bool
    var body: some View {
        TabView {
            OnboardingPage1(isOnboardingShown: $isOnboardingShown)
            
            OnboardingPage3(isOnboardingShown: $isOnboardingShown)
            
            OnboardingPage4(isOnboardingShown: $isOnboardingShown)
            
            OnboardingPage5(isOnboardingShown: $isOnboardingShown)
            
            OnboardingPage6(isOnboardingShown: $isOnboardingShown)
            
            OnboardingPage8(isOnboardingShown: $isOnboardingShown)
            
            OnboardingPage9(isOnboardingShown: $isOnboardingShown)
            
            OnboardingPage10(isOnboardingShown: $isOnboardingShown)
            
            OnboardingPage13(isOnboardingShown: $isOnboardingShown)
            
            OnboardingPage14(isOnboardingShown: $isOnboardingShown)
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(isOnboardingShown: .constant(true))
    }
}
