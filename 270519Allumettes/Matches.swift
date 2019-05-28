//
//  Matches.swift
//  270519Allumettes
//
//  Created by CHEVALIER on 27/05/2019.
//  Copyright © 2019 CHEVALIER. All rights reserved.
//

import Foundation

// SINGLETON
class Matches {
    
    private static var matches: Matches? = nil
    var number = 20

    private init() {

        
    }
    
    static var instance : Matches{
        
        if  matches == nil {
            matches = Matches()
        
        }
        return matches!
    }
 
 

    
}
