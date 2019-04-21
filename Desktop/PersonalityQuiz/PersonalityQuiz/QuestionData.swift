//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Micheal English on 4/18/19.
//  Copyright © 2019 Micheal English. All rights reserved.
//

import Foundation

struct Question{
    var text: String
    var type: ResponseType  // the questions will be either single-choice, multiple-choice, or ranged
    var answers: [Answer]   // so the responses/answers will be as well
    
    enum ResponseType{
            // each potentially case for an answer corresponding to the respective question format
        case single, multiple, ranged
    }
    
    struct Answer{
            // an answer, as a normal sentence, will return depending on which AnimalType case is relevant
        var text: String
        var type: AnimalType
    }   // end answer
    
    enum AnimalType: Character{
            // four different types possible
        case wolf = "🐺"
        case bear = "🐻"
        case eagle = "🦅"
        case lion = "🦁"
        
        var definition: String{
                // definition takes the AnimalType enum specified by answer and that instance is used to
                // return the appropriate string
            switch self{
                case .wolf:
                    return "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your friends"
                case .bear:
                    return "You are wise beyond your years and full of robust strength."
                
                case .eagle:
                    return "Mischievious, yet mild-tempered, you enjoy doing things on your own."
                case .lion:
                    return "You are a leader amongst leaders and inspire loyalty and respect in everyone that meets you."
            }   // end of the switch statement from computed property (self)
        }   // end definition
    }   // end AnimalType
}   // end Question struct
