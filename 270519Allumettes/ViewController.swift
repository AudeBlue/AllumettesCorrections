//
//  ViewController.swift
//  270519Allumettes
//
//  Created by CHEVALIER on 27/05/2019.
//  Copyright © 2019 CHEVALIER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var uitxf_namePlayer: UITextField!
    
    @IBOutlet weak var uilbl_TourPlayer: UILabel!
    @IBOutlet weak var uilbl_info: UILabel!
    @IBOutlet weak var uilbl_debug: UILabel!
    @IBOutlet weak var uibtn_confirmName: UIButton!
    
    @IBOutlet var uibtn_allMatches: [UIButton]!
    
    
    
    var game = Game()
    
    
    
    
    
    var arrayMatches:[UIButton] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        display()
        
        
        
    }
    
    
    
    
    @IBAction func uibtn_ok(_ sender: Any) {
        
    }
    
    
    
    @IBAction func matchesTouched(_ sender: UIButton) {
        
        if let buttonPosition = arrayMatches.firstIndex(of: sender) {
            arrayMatches.remove(at: buttonPosition)
        sender.isSelected = false
            sender.alpha = 1
            
        }
      
        
        arrayMatches.append(sender)
        
        for button in arrayMatches {
            
            button.isSelected = true
            button.alpha = 0.7
            
        }
        
        
    }
    
    
    
    
    @IBAction func confirmName(_ sender: Any) {
        
        if  game.player1.name.count > 2 {
        
        uitxf_namePlayer.text = game.player2.name
            
        } else {
            
            uitxf_namePlayer.text = game.player1.name
            
        }
        
    }
    
    
    
    
    func display() {
        for button in uibtn_allMatches {
            
            button.layer.cornerRadius = 7
            button.clipsToBounds = true
            
        }
        uilbl_debug.layer.cornerRadius = 7
        uilbl_debug.clipsToBounds = true
        
    }
    
    
    @IBAction func startGame(_ sender: UIButton) {
        
        
    }
    
    
}

