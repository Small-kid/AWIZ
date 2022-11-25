//
//  OnboardingView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 18/11/22.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView {
            OnboardingPage1()
            
            OnboardingPage2()

            OnboardingPage3()
            
            OnboardingPage4()
            
            OnboardingPage5()
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
