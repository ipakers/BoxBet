//
//  BoxBetViewModel.swift
//  BoxBet
//
//  Created by Isaac Perry on 2/5/17.
//  Copyright © 2017 Isaac Perry. All rights reserved.
//

import Foundation
protocol BoxBetViewModelProtocol {
    var players: Dynamic<[Player]> { get }
    var teams: Dynamic<[String]> { get }
    var boxes: Dynamic<Int> { get }
    var cost: Dynamic<Double> { get }
}

class BoxBetViewModel: BoxBetViewModelProtocol {
    var boxBet: BoxBet
    
    var players: Dynamic<[Player]>
    var teams: Dynamic<[String]>
    var boxes: Dynamic<Int>
    var cost: Dynamic<Double>
    
    init() {
        self.boxBet = BoxBet()
        self.players = Dynamic(self.boxBet.players)
        self.teams = Dynamic(self.boxBet.teams)
        self.boxes = Dynamic(self.boxBet.boxes)
        self.cost = Dynamic(self.boxBet.cost)
    }
}
