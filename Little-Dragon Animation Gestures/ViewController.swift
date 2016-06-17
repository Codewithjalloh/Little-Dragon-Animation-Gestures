//
//  ViewController.swift
//  Little-Dragon Animation Gestures
//
//  Created by wealthyjalloh on 17/06/2016.
//  Copyright © 2016 CWJ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var littleDragonView: UIImageView!
    
    // instance variables 
    var frames: NSArray?
    var theCenter: CGPoint?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dragonImage1 = UIImage(named: "asset_204")!
        let dragonImage2 = UIImage(named: "asset_205")!
        let dragonImage3 = UIImage(named: "asset_206")!
        let dragonImage4 = UIImage(named: "asset_207")!
        let dragonImage5 = UIImage(named: "asset_208")!
        let dragonImage6 = UIImage(named: "asset_209")!
        let dragonImage7 = UIImage(named: "asset_210")!
        let dragonImage8 = UIImage(named: "asset_211")!
        
        let frames: [UIImage] = [dragonImage1, dragonImage2, dragonImage3, dragonImage4, dragonImage5, dragonImage6, dragonImage7, dragonImage8]
        
        
        littleDragonView.animationDuration = 0.15
        littleDragonView.animationRepeatCount = 2
        littleDragonView.animationImages = frames
        
        
        
        // walk right
        let swipeGesRight = UISwipeGestureRecognizer(target: self, action: "walkRight:")
        swipeGesRight.direction = .Right
        view.addGestureRecognizer(swipeGesRight)
        
        
        // walk left
        let swipeGesLeft = UISwipeGestureRecognizer(target: self, action: "walkLeft:")
        swipeGesRight.direction = .Left
        view.addGestureRecognizer(swipeGesLeft)
        
        
        // jump
        let tap = UITapGestureRecognizer(target: self, action: "jump")
        view.addGestureRecognizer(tap)
    
        // longPress
        let longPress = UILongPressGestureRecognizer(target: self, action: "longPressed:")
        view.addGestureRecognizer(longPress)
        
    }


}

