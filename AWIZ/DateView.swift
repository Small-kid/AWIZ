//
//  DateView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 29/10/22.
//

import SwiftUI

struct DateView: View {
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
        ScrollView(.horizontal) {
            LazyHGrid(rows: [row]) {
                ForEach(date) { date in
                    Text(date.day)
                        .bold()
                        .padding()
                }
            }
        }
            //List {
                //ForEach(date) { date in
                    //Text(date.day)
            //}
        }
    }

        
    


struct DateView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(exerciseTrack: 12)
    }
}
