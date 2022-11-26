//
//  OnboardingPage2.swift
//  AWIZ
//
//  Created by Wong Jun heng on 26/11/22.
//

import SwiftUI

struct OnboardingPage2: View {
    var body: some View {
        ZStack {
            Color("Onboarding")
                .edgesIgnoringSafeArea(.all)
            Text("Let's get you started with a short tutorial of the app")
                .font(.title)
                .frame(alignment: .center)
        }
        .multilineTextAlignment(.center)
    }
}

struct OnboardingPage2_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage2()
    }
}
