//
//  Game.swift
//  270519Allumettes
//
//  Created by CHEVALIER on 27/05/2019.
//  Copyright © 2019 CHEVALIER. All rights reserved.
//

import Foundation

class Game {
    
    // initialisation variable
    var player1 = Player(name: "")
    var player2 = Player(name: "")
    
    var matchesCount = 20
    var matchesPicked = 0
    
    private var _currentPlayer = 1
    private var _playertexte = " "
    
    
    
    
    
    //methodes currentPlayer, matchesPicked
    
    func whoPlay() -> String {
        if _currentPlayer == 1 {
            _playertexte = "Joueur \(player1.name)  "
        } else if _currentPlayer == 2 {
            _playertexte = "Joueur \(player2.name)  "
        }
        return _playertexte
    }
    
    
    
    func matchesLeft() {
        matchesCount = matchesCount - matchesPicked
    }
    
    
    func newGame() {
        
        matchesPicked = 0
        matchesCount = 20
        
        
    }
    
}
