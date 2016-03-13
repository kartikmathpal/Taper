//
//  ViewController.swift
//  Tapper
//
//  Created by Kartik Mathpal on 12/03/16.
//  Copyright © 2016 Mathpal Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Properties
    var maxTaps = 0
    var currentTaps = 0
    
    //Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var tapBtn:  UIButton!
    @IBOutlet weak var tapsLabel: UILabel!
    
    @IBAction func onCoinTap (sender : UIButton!){
            currentTaps++
            updateTabsLabel()
        if isGameOver(){
            restartGame()
        }
    }
    @IBAction func onPlayBtnPressed(sender : UIButton!){
     
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != ""
        {
            logoImg.hidden = true
            playBtn.hidden = true
            howManyTapsTxt.hidden = true
            
            tapBtn.hidden = false
            tapsLabel.hidden = false
            
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            updateTabsLabel()
            
        }
        
    }
    func restartGame(){
        maxTaps = 0
        howManyTapsTxt.text = ""
        logoImg.hidden = false
        playBtn.hidden = false
        howManyTapsTxt.hidden = false
        
        tapBtn.hidden = true
        tapsLabel.hidden = true
        
    }
    func isGameOver()-> Bool{
        if currentTaps >= maxTaps {
            return true
        }
        else {
        return false
        }
    }
    
    func updateTabsLabel(){
        tapsLabel.text = "\(currentTaps) Taps"
    }
}
