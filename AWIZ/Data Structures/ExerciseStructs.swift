//
//  ExercisePlan.swift
//  AWIZ
//
//  Created by Wong Jun heng on 5/11/22.
//

import Foundation
import AVKit

struct ExercisePlan: Identifiable {
    let id = UUID()
    var title: String
    let duration = 25
    var details: String
    var exercise: Exercise
    var exercise2: Exercise
    var exercise3: Exercise
    var exercise4: Exercise
    var exercise5: Exercise
    var isLastExercise = false
}

struct Exercise {
    var title: String
    var duration: Int
    var steps: String
    var video: AVPlayer
}

let exercise1 = Exercise(title: "Elbow Stretch", duration: 5, steps: "Lift your left arm up while pushing it towards your chest, with your elbow pointing forward. (We recommend doing 10 seconds per rep).", video: AVPlayer(url:  Bundle.main.url(forResource: "ElbowStretch" , withExtension: "mp4")!) )

let exercise2 = Exercise(title: "Tricep Stretch", duration: 5, steps: "Lift your left elbow straight up while bending your arm. Grab your left elbow with your right hand and pull your left elbow towards your head or slightly behind your head with light pressure. (We recommend doing 10 seconds per rep).", video: AVPlayer(url:  Bundle.main.url(forResource: "TricepStretch" , withExtension: "mp4")!))

let exercise3 = Exercise(title: "High Knee March", duration: 5, steps: "From a standing start, with your arms bent at ninety degrees by your sides, start running on the spot, lifting your knees up to waist height and repeating the motion.", video: AVPlayer(url:  Bundle.main.url(forResource: "HighKneeMarch" , withExtension: "mp4")!))

let exercise4 = Exercise(title: "Sit Ups", duration: 5, steps: "Lie on your back on a mat with knees bent and feet flat on the floor. Bend and cup both of your hands on your ears. Crunch your ab muscles to lift yourself off the mat. Let your elbows touch your knees then return to your starting position.", video: AVPlayer(url:  Bundle.main.url(forResource: "SitUp" , withExtension: "mp4")!))

let exercise5 = Exercise(title: "Calf Raises", duration: 5, steps: "Raise your heels off the floor and return to the starting position, by slowly lowering your heels. (We recommend doing 20 seconds per rep).", video: AVPlayer(url:  Bundle.main.url(forResource: "CalfRaises" , withExtension: "mp4")!))

let exercise6 = Exercise(title: "Lunges", duration: 5, steps: "Stand with your feet hip-width apart, keep your back straight and your shoulders back. Take a step forward and slowly bend both knees, until your back knee is just above the floor. Stand back up and alternate your legs then repeat the movement. (We recommend doing 6 reps before taking a 10 second rest).", video: AVPlayer(url:  Bundle.main.url(forResource: "Lunges" , withExtension: "mp4")!))

 let exercise7 = Exercise(title: "Toe Touches", duration: 5, steps: "Sit with your legs closed and toes pointing up. Keep your knees straight while stretching your arms forward to touch your toes. (We recommend doing 20 seconds per rep).", video: AVPlayer(url:  Bundle.main.url(forResource: "ToeTouches" , withExtension: "mp4")!))

let exercise8 = Exercise(title: "Jog on the Spot", duration: 5, steps: "Lift your right arm and left foot at the same time and raise your knee as high as your hips. Then switch to the opposite foot, quickly lifting your right foot to hip height and repeat.", video: AVPlayer(url:  Bundle.main.url(forResource: "JogOnTheSpot" , withExtension: "mp4")!))

let exercise9 = Exercise(title: "Wall Push Ups", duration: 5, steps: "Place hands on a wall shoulder-width apart and at chest level then step back with both feet.Bend your elbows and lower your upper body towards the wall. Next, push yourself back up into the starting position (We recommend doing 5 reps before taking a 10 second rest).", video: AVPlayer(url:  Bundle.main.url(forResource: "WallPushUp" , withExtension: "mp4")!))

let exercise10 = Exercise(title: "Arm Circles", duration: 5, steps: "Hold your arms straight out to your sides, then swing them forwards or backwards in circles. Try to keep your shoulders down while doing this exercise. (We recommend doing 20 seconds per rep then changing sides).", video: AVPlayer(url:  Bundle.main.url(forResource: "ArmCircles" , withExtension: "mp4")!))


