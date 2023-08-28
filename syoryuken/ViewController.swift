//
//  ViewController.swift
//  syoryuken
//
//  Created by Ngos on 2023/08/27.
//

import UIKit

class ViewController: UIViewController {

    //Attack array
    var imageArrayAction : Array<UIImage> = []
    
    // Connect ImageView
    @IBOutlet weak var CharaImage: UIImageView!
    
    // Connect ActionButton
    @IBAction func ActionButton(_ sender: Any) {
        // Adapt Animation
        CharaImage.animationImages = imageArrayAction
        // Between 1.5sec
        CharaImage.animationDuration = 2
        // Replay once
        CharaImage.animationRepeatCount = 1
        // Start animation
        CharaImage.startAnimating()
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Put action Image in array
        while let actionImage = UIImage(named: "attack\(imageArrayAction.count+1)"){
            imageArrayAction.append(actionImage)
        }
        
        
        
        // Do any additional setup after loading the view.
    }


}

