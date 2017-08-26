//
//  skOverlay.swift
//  transform
//
//  Created by Lawrence Herman on 8/24/17.
//  Copyright © 2017 Lawrence Herman. All rights reserved.
//

import Foundation
import SpriteKit

protocol OverlaySceneDelegate: class {
    func variableSelect(label: SKLabelNode)
}


class SkOverlay: SKScene {
    
//    var positionTitle: SKLabelNode!
    var positionXLabel: SKLabelNode!
    var positionXValueLabel: SKLabelNode!
    var positionXValue: Float = 0
    
    var positionYLabel: SKLabelNode!
    var positionYValueLabel: SKLabelNode!
    var positionYValue: Float = 0
    
    var positionZlabel: SKLabelNode!
    var positionZValueLabel: SKLabelNode!
    var positionZValue: Float = 0
    
    
    
    
    weak var overlayDelegate: OverlaySceneDelegate?
    
  
    override func didMove(to view: SKView) {


        positionXLabel = self.childNode(withName: "positionXLabel") as! SKLabelNode
        positionXValueLabel = self.childNode(withName: "positionXValueLabel") as! SKLabelNode
        positionXValueLabel.text = String(positionXValue)
        
        positionYLabel = self.childNode(withName: "positionYLabel") as! SKLabelNode
        positionYValueLabel = self.childNode(withName: "positionYValueLabel") as! SKLabelNode
        positionYValueLabel.text = String(positionYValue)
        
        positionZlabel = self.childNode(withName: "positionZLabel") as! SKLabelNode
        positionZValueLabel = self.childNode(withName: "positionZValueLabel") as! SKLabelNode
        positionZValueLabel.text = String(positionZValue)
        
        
        
//
    }
    

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touch began")
//    
        let touch = touches.first
        let location = touch?.location(in: self)
        
        switch location {
        case _ where positionXLabel.contains(location!) || positionXValueLabel.contains(location!):
            positionXLabel.fontColor = UIColor.red
            overlayDelegate?.variableSelect(label: positionXLabel)
        case _ where positionYLabel.contains(location!) || positionYValueLabel.contains(location!):
            positionYLabel.fontColor = UIColor.red
            overlayDelegate?.variableSelect(label: positionYLabel)
        case _ where positionZlabel.contains(location!) || positionZValueLabel.contains(location!):
            positionZlabel.fontColor = UIColor.red
            overlayDelegate?.variableSelect(label: positionZlabel)
        default:
            positionXLabel.fontColor = UIColor.red
            overlayDelegate?.variableSelect(label: positionXLabel)
        }
        
        
        


        
        
        
        
        //        let hitResults = self.view?.hitTest(location!, with: event)
//        hitResults?.next?.touchesBegan(touches, with: event)
//    

    }
    
    //    override init(size: CGSize) {
    //        super.init(size: size)
    //
    //
    //
    //    }
    //
    //    required init?(coder aDecoder: NSCoder) {
    //        fatalError("init(coder:) has not been implemented")
    //    }
    

    

    
}
