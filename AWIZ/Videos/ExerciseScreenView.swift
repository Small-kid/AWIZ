//
//  ExerciseScreenView.swift
//  AWIZ
//
//  Created by Wong Jun heng on 14/11/22.
//

import SwiftUI
import AVKit

struct ExerciseScreenView: View {
    
    @State var player = AVPlayer()
    
    var body: some View {
        VStack {
            
            VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "ToeTouches.mp4" , withExtension: "mp4")!))
                .scaledToFit()
                .offset(y: -140)
            //.frame(width: 350, height: 300)
            
        }
    }
}
struct ExerciseScreenView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseScreenView()
    }
}
