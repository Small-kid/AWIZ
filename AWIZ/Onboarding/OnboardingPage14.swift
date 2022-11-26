//
//  OnboardingPage14.swift
//  AWIZ
//
//  Created by Wong Jun heng on 26/11/22.
//

import SwiftUI

struct OnboardingPage14: View {
    @Binding var isOnboardingShown: Bool
    var body: some View {
        VStack {
            Image(systemName: "house")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .padding()
            
            Text("You have come to the end of the tutorial. Get started by pressing the button below to go to the home screen.")
                .font(.title)
                .frame(alignment: .center)
            
            Button {
                isOnboardingShown.toggle()
            } label: {
                Text("Get Started")
            }
            .padding()
            .background(.green)
            .foregroundColor(.black)
            .cornerRadius(10)
            .font(Font.system(size: UIFontMetrics.default.scaledValue(for: 25)))

            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding(20)
        .background(
            Color("Onboarding")
                .edgesIgnoringSafeArea(.all))
    }
}

struct OnboardingPage14_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingPage14(isOnboardingShown: .constant(false))
    }
}
