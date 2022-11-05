//
//  DateView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 29/10/22.
//

import SwiftUI

struct DateView: View {
    
    @Binding var exerciseTrack: Double
    let date = [ Date(day: "M"),
                 Date(day: "T"),
                 Date(day: "W"),
                 Date(day: "T"),
                 Date(day: "F"),
                 Date(day: "S"),
                 Date(day: "S")
                 
    ]

    var body: some View {
        let row = GridItem(.fixed(50), spacing: 20, alignment: .center)
        ZStack {
            
            Rectangle()
                .cornerRadius(20)
                .frame(width: 375, height: 85)
                .shadow(radius: 5)
                .foregroundColor(.white)
                .offset(x: -18 )
            
            
            
            ScrollView(.horizontal) {
                LazyHGrid(rows: [row]) {
                    ForEach(date) { date in
                        Text(date.day)
                            .bold()
                            .padding()
                            .background(Rectangle().fill(exerciseTrack<25.0 ? (Color(red: 255/255, green: 237/255, blue: 237/255)):(Color(red: 240/255, green: 162/255, blue: 2/255))).shadow(radius: 3).cornerRadius(10))
                    }
                }
            }
        }
    }
}
    


struct DateView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(exerciseTrack: 20)
    }
}

