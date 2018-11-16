//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Wytze Dijkstra on 15/11/2018.
//  Copyright © 2018 Wytze Dijkstra. All rights reserved.
//

import Foundation

struct Question {
    var text : String
    var type : ResponseType
    var answers : [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text : String
    var type : SuperheroType
}

enum SuperheroType : String {
    case spiderman = "Spiderman", ironman = "IronMan", hulk = "Hulk", captainamerica = "CaptainAmerica"
    
    var definition: String {
        switch self {
        case .spiderman:
            return "You like to be a bit risky and to have fun. Besides that are you very acrobatic!"
        case .ironman:
            return "You are a little bit selfish and like to do things on your own. However, you don't need recognition for your acts"
        case .hulk:
            return "You've showed that you like violence. You're strong and the most fun thing you can think of is to smash things!"
        case .captainamerica:
            return "You are a true leader and like to have people around you. Your true love for America can be seen on the print of your suit."
        }
    }
}


