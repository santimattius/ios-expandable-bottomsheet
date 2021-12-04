//
//  Course.swift
//  ios-expandable-bottomsheet
//
//  Created by Santiago Mattiauda on 3/12/21.
//

import Foundation

struct Course: Identifiable {
    var id = UUID()
    var name: String
    var description:String
    var image: String
    var favorite: Bool = false
    var free: Bool = false
    var completed:Bool = false
    var level:LevelType = .beginner
}

#if DEBUG
var courses: [Course] = [
        Course(name: "iOS Developer", description: "Master the Swift programming language, and create a portfolio of iOS apps for iPhone and iPad to showcase your skills!", image: "ios_dev", free: false, level: .beginner),
        Course(name: "Introduction to TensorFlow Lite", description: "Learn how to deploy deep learning models on mobile and embedded devices with TensorFlow Lite.", image: "intro_tensorflow_lite", free: true, level: .intermediate),
        Course(name: "Intro to iOS App Development with Swift", description: "Take the first step in becoming an iOS Developer by learning about Swift and writing your first app.", image: "intro_ios_app", free: true,  level: .intermediate),
        Course(name: "Introduction to Virtual Reality", description: "Take the first step in becoming an iOS Developer by learning about Swift and writing your first app.", image: "intro_vr", free: true, level: .beginner),
        Course(name: "Objective-C for Swift Developers", description: "Learn the distinguishing language features of Objective-C. Practice Objective-C syntax by writing classes, and writing and calling methods.", image: "objc_for_swift", free: true,  level: .intermediate),
        Course(name: "Core ML: Machine Learning for iOS", description: "Learn how to use Apple's Core ML framework to build iOS apps with intelligent new features.", image: "core_ml_ios", free: true,  level: .intermediate),
        Course(name: "Server-Side Swift", description: "In this course, built in collaboration with IBM and Hashicorp, you'll learn how to use Swift as a server-side language for building end-to-end applications.", image: "server_side_swift", free: true, level: .intermediate),
        Course(name: "How to Make an iOS App", description: "Learn the process of building an app, taking your ideas from drawing board to App Store!", image: "how_make_ios_app", free: true, level: .advanced),
        Course(name: "Data Structures & Algorithms in Swift", description: "Review and practice the skills technical interviewers expect you to know and learn how to explain your Swift solutions.", image: "structures_algotithms_swift", free: true, level: .intermediate),
        Course(name: "iOS Interview Prep", description: "Answer iOS and mobile development interview questions with confidence and poise.", image: "ios_interview_prep", free: true, level: .intermediate)
    ]
#endif
