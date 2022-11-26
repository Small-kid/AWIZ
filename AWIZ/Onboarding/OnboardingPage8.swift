//
//  OnboardingPage8.swift
//  AWIZ
//
//  Created by Wong Jun heng on 26/11/22.
//

import SwiftUI

struct OnboardingPage8: View {
    var body: some View {
        VStack {
            Image("DetailView2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
            Text("Click the [Start Exercise] button below to start you exercise")
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

struct OnboardingPage8_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage8()
    }
}
