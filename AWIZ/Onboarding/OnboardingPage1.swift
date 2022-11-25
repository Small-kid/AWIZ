//
//  OnboardingPage1.swift
//  AWIZ
//
//  Created by Wong Jun heng on 26/11/22.
//

import SwiftUI

struct OnboardingPage1: View {
    var body: some View {
        VStack {
            Text("Welcome to ElderlyFit!")
                .font(.largeTitle)
                .frame(alignment: .center)
            
            Text("Swipe left to continue")
                .font(.headline)
        }
    }
}

struct OnboardingPage1_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage1()
    }
}
