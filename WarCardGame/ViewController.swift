//
//  ViewController.swift
//  WarCardGame
//
//  Created by parashar.r.adhikary on 08/02/2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var leftImageView: UIImageView!
    
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    
    @IBOutlet weak var leftScoreLevel: UILabel!
    
    
    @IBOutlet weak var rightScoreLevel: UILabel!
    
    
    var leftScore = 0
    var rightScore = 0
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    
    
    @IBAction func dealTapped(_ sender: Any) {
        //randominizing number
        
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
       

        
        //uodating image
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
   rightImageView.image = UIImage(named: "card\(rightNumber)")
        

        //comparing the  number
        if leftNumber > rightNumber {

        //left side wins
            leftScore += 1
            leftScoreLevel.text = String(leftScore)
        }

        if rightNumber > leftNumber   {
            //right side wins

            rightScore += 1
            rightScoreLevel.text = String(rightScore)


     }
        
        else {
            // tie
        }
  
        
    }

}

