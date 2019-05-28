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
    
    var arrayMatches:[UIButton] = []
    var playerNumber = 2
    
    var player1 = Player(name: "")
    var player2 = Player(name: "")
    
    var matchesLeft = 20
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        display()
        
        
        
    }
    
    
    
    
    @IBAction func uibtn_ok(_ sender: Any) {
          game()
        for matches in arrayMatches {
            matches.isEnabled = false
            matches.alpha = 0
        }
        
        uilbl_info.text = "Vous avez selectionné \(arrayMatches.count) allumettes"
        
        
      
        tour()
        
        arrayMatches.removeAll()
        game()
    }
    
    
    
    @IBAction func matchesTouched(_ sender: UIButton) {
        
        
        if let buttonPosition = arrayMatches.firstIndex(of: sender) {
            arrayMatches.remove(at: buttonPosition)
            sender.isSelected = false
            sender.alpha = 1
            
        }
            
        else if arrayMatches.count < 3 {
            
            arrayMatches.append(sender)
            sender.isSelected = true
            sender.alpha = 0.5
            
        }
        
        
        uilbl_info.text = " Vous avez selectionné \(arrayMatches.count) allumettes"
        
        
    }
    
    
    
    
    @IBAction func confirmName(_ sender: Any) {
        
        if player1.name.count > 2 {
            
            if let name2 = uitxf_namePlayer.text {
                player2.name = name2
                tour()
                
                uitxf_namePlayer.isHidden = true
                uibtn_confirmName.isHidden = true
            }
            
        } else {
            
            if let name1 = uitxf_namePlayer.text {
                player1.name = name1
            }
            
            
        }
        uitxf_namePlayer.text = ""
      
    }
    
    func tour() {
        
        playerNumber = playerNumber == 1 ? 2 : 1 // est égal à 1 alors 2 sinon 1
        
        if playerNumber == 1{
            uilbl_TourPlayer.text = "Joueur \(player1.name) à vous"
            
            
        }  else if playerNumber == 2 {
            
            uilbl_TourPlayer.text = "Joueur \(player2.name) à vous"
        }
        
        
        
        
    }
    
    func game() {
        if matchesLeft > 1 {
            
            matchesLeft = matchesLeft - arrayMatches.count
            uilbl_debug.text = "\(matchesLeft)"
            
        } else if matchesLeft == 1 {
            uilbl_TourPlayer.text = playerNumber == 1 ? "\(player2.name) a gagné" : "\(player1.name) a gagné"
            uilbl_info.isHidden = true
            for bouton in uibtn_allMatches {
                
                bouton.isEnabled = false
            }
            
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
        for button in uibtn_allMatches {
            
            button.isSelected = false
            button.isEnabled = true
            button.alpha = 1
   
        }
        matchesLeft = 20
        player1.name = ""
        player2.name = ""
        uilbl_info.isHidden = false
        uilbl_info.text = "Debut Partie"
        uilbl_TourPlayer.text = " Nouvelle Partie"
        
        uitxf_namePlayer.isHidden = false
        uibtn_confirmName.isHidden = false
        
        
    }
    
}




