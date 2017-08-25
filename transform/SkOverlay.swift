//
//  skOverlay.swift
//  transform
//
//  Created by Lawrence Herman on 8/24/17.
//  Copyright © 2017 Lawrence Herman. All rights reserved.
//

import Foundation
import SpriteKit

class SkOverlay: SKScene {
    
    var postionTitle: SKLabelNode!
  
    override func didMove(to view: SKView) {
        postionTitle = self.childNode(withName: "positionTitle") as! SKLabelNode
        
        
    
    }
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        let location = touch?.location(in: self)
        let hitResults = self.view?.hitTest(location!, with: event)
        hitResults?.next?.touchesMoved(touches, with: event)
        print(touch)
    }
    

    
}
