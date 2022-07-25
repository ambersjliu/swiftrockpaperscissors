//
//  Sign.swift
//  RPS
//
//  Created by Swift Admin on 2022-07-24.
//

import Foundation


func randomSign() -> Sign{
    let sign = Int.random(in: 0...2)
    if sign == 0{
        return .rock
    }else if sign == 1{
        return .paper
    }else{
        return .scissors
    }
}


enum Sign{
    case rock, paper, scissors
    var emoji:String{
        switch self {
        case .rock:
            return "🪨"
        case .paper:
            return "📄"
        case .scissors:
            return "✂️"
        }
    }
    func beats(item:Sign)->GameState{
        let rockWins = (self == .rock && item == .scissors)
        let paperWins = (self == .paper && item == .rock)
        let scissorsWins = (self == .scissors && item == .paper)
        
        if(rockWins || paperWins || scissorsWins){
            return .win
        }
        else if(self == item){
            return .draw
        }
        else{
            return .lose
        }
    }
}
