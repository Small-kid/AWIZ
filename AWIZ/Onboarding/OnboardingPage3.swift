//
//  OnboardingPage3.swift
//  AWIZ
//
//  Created by Wong Jun heng on 26/11/22.
//

import SwiftUI

struct OnboardingPage3: View {
    var body: some View {
        ZStack {
            Color("Onboarding")
                .edgesIgnoringSafeArea(.all)
            VStack {
                Color("Onboarding")
                    .edgesIgnoringSafeArea(.all)
                Image("HomeScreen")
                    .resizable()
                    .frame(width: 300, height: 600)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 200, trailing: 0))
                
                Text("This is your home screen where you can see how much progress you have made throughout the day as well as a streaks bar to keep track of how many days straight you have been exercising.")
                    .frame(alignment: .center)
            }
        }
    }
}
struct OnboardingPage3_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage3()
    }
}
