//
//  ViewController.swift
//  ios-x-o
//
//  Created by Dalal Aljouhar on 6/28/20.
//  Copyright © 2020 Dalal Aljouhar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b9: UIButton!
    
    @IBOutlet weak var turnLebel: UILabel!
    
    var buttons: [UIButton] = []
    
    
    
     var counter = 0
    
    override func viewDidLoad() {
        buttons =  [b1,b2,b3,b4,b5,b6,b7,b8,b9]
    }
    
    
    @IBAction func prass(_ sender: UIButton) {
        print("Done")
        
        if counter  % 2 == 0{
            sender.setTitle("x", for: .normal)
            sender.setTitleColor(.darkGray, for: .normal)
            turnLebel.text = "o turn"
    }
        else{
            sender.setTitle("o", for: .normal)
            sender.setTitleColor(.blue, for: .normal)
             turnLebel.text = "x turn"
        }
        
        counter += 1
        sender.isEnabled = false
        Winnig(winner: "x")
        Winnig(winner: "o")
         
        
        
        }
        
        
    
    @IBAction func resetTapped() {
    
        
    }


        
    
         
    func  Winnig(winner:String)
    {
        
        // x wining
        if (b1.titleLabel?.text ==  winner  &&  b2.titleLabel?.text ==  winner &&  b3.titleLabel?.text ==  winner) ||
           (b4.titleLabel?.text ==  winner  &&  b5.titleLabel?.text ==  winner &&  b6.titleLabel?.text ==  winner) ||
           (b7.titleLabel?.text ==  winner  &&  b8.titleLabel?.text ==  winner &&  b9.titleLabel?.text ==  winner) ||
           (b1.titleLabel?.text ==  winner  &&  b4.titleLabel?.text ==  winner &&  b7.titleLabel?.text ==  winner) ||
           (b2.titleLabel?.text ==  winner  &&  b5.titleLabel?.text ==  winner &&  b8.titleLabel?.text ==  winner) ||
           (b3.titleLabel?.text ==  winner  &&  b6.titleLabel?.text ==  winner &&  b9.titleLabel?.text ==  winner) ||
           (b1.titleLabel?.text ==  winner  &&  b5.titleLabel?.text ==  winner &&  b9.titleLabel?.text ==  winner) ||
           (b3.titleLabel?.text ==  winner  &&  b5.titleLabel?.text ==  winner &&  b7.titleLabel?.text ==  winner)
        {

        print(" \(winner)الفائز")
            
            //alert
            let alertCotroller = UIAlertController(title: "\(winner)فاز ", message: "press the button to restart", preferredStyle:  .alert)
            let restartAction =  UIAlertAction(title: "replay the game", style: .cancel) { (alert) in
                //restat game
                restartGame()
            }
            
            alertCotroller.addAction(restartAction)
            present(alertCotroller, animated: true, completion: nil)
    
        
        }
        
        func restartGame()
        {
            
            for b in buttons{
            b.setTitle("", for:  .normal)
            b.titleLabel?.text = ""
            b.isEnabled = true
            
        
            
           
            
        }
        
        
           
        
       
               
               
                      
               
               
   
}



}







}
