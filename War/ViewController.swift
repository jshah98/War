//
//  ViewController.swift
//  War
//
//  Created by Jinansh Shah on 2017-01-05.
//  Copyright © 2017 Jinansh Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    var leftScore = 0
    var rightScore = 0
    
    func getArrayOfCards () -> [String]{
        var cards: [String] = []
        for i in 2...10{
            cards.append ("card\(i)")
    
        }
        cards += ["jack", "queen", "king", "ace"]
        return cards
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(_ sender: Any) {
        let leftCardNo  = Int (arc4random_uniform(13))
        let rightCardNo = Int (arc4random_uniform(13))
        let cards = getArrayOfCards ()
        leftImageView.image = UIImage (named: cards [leftCardNo])
        rightImageView.image = UIImage (named: cards[rightCardNo])
        
        
        if leftCardNo > rightCardNo{
            leftScore += 1
            leftScoreLabel.text = String (leftScore)
        }
        else if leftCardNo == rightCardNo{
            
        }
        else{
            rightScore += 1
            rightScoreLabel.text = String (rightScore)
        }
        
        
    }

}

