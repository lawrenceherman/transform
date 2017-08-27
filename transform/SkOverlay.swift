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
    var positionXLabel, positionYLabel, positionZLabel, eulerXLabel, eulerYLabel, eulerZLabel, scaleXLabel, scaleYLabel, scaleZLabel, orientationWLabel, orientationXLabel, orientationYLabel, orientationZLabel, rotationWLabel, rotationXLabel, rotationYLabel, rotationZLabel:  SKLabelNode!
    
    var testX: SKLabelNode!
    

    
    
    var positionXValueLabel, positionYValueLabel, positionZValueLabel, eulerXValueLabel, eulerYValueLabel, eulerZValueLabel, scaleXValueLabel, scaleYValueLabel, scaleZValueLabel, orientationWValueLabel, orientationXValueLabel, orientationYValueLabel, orientationZValueLabel, rotationWValueLabel, rotationXValueLabel, rotationYValueLabel, rotationZValueLabel: SKLabelNode!
    
    
    
    var positionYValue, positionZValue, eulerXValue, eulerYValue, eulerZValue, scaleXValue, scaleYValue, scaleZValue, orientationWValue, orientationXValue, orientationYValue, orientationZValue, rotationWValue, rotationXValue, rotationYValue, rotationZValue: Float?
    
    var positionXValue: Float = 0 {
        didSet {
            let value = String.init(format: "%.2f", positionXValue)
            switch value.count {
            case 4:
                testX.text = ".x    " + value
            case 5:
                testX.text = ".x   " + value
            case 6:
                testX.text = ".x  " + value
            default:
                testX.text = ".x    " + value
            }
        }
    }
    

    weak var overlayDelegate: OverlaySceneDelegate?
    
  
    override func didMove(to view: SKView) {

        testX = self.childNode(withName: "testX") as! SKLabelNode
//        testX.text = ".x    \(testXValue)"

        positionXLabel = self.childNode(withName: "positionXLabel") as! SKLabelNode
        positionXValueLabel = self.childNode(withName: "positionXValueLabel") as! SKLabelNode

        positionYLabel = self.childNode(withName: "positionYLabel") as! SKLabelNode
        positionYValueLabel = self.childNode(withName: "positionYValueLabel") as! SKLabelNode

        positionZLabel = self.childNode(withName: "positionZLabel") as! SKLabelNode
        positionZValueLabel = self.childNode(withName: "positionZValueLabel") as! SKLabelNode
        
        eulerXLabel = self.childNode(withName: "eulerXLabel") as! SKLabelNode
        eulerXValueLabel = self.childNode(withName: "eulerXValueLabel") as! SKLabelNode
        
        eulerYLabel = self.childNode(withName: "eulerYLabel") as! SKLabelNode
        eulerYValueLabel = self.childNode(withName: "eulerYValueLabel") as! SKLabelNode
        
        eulerZLabel = self.childNode(withName: "eulerZLabel") as! SKLabelNode
        eulerZValueLabel = self.childNode(withName: "eulerZValueLabel") as! SKLabelNode
        
        scaleXLabel = self.childNode(withName: "scaleXLabel") as! SKLabelNode
        scaleXValueLabel = self.childNode(withName: "scaleYLabel") as! SKLabelNode
        
        
        
        
        

    }
    func selectLabel(label: SKLabelNode) {

        positionXLabel.color = UIColor.black
        positionYLabel.color = UIColor.black
        positionZLabel.color = UIColor.black
        testX.color = UIColor.black
//        eulerXLabel.color = UIColor.black
//        eulerYLabel.color = UIColor.black
//        eulerZLabel.color = UIColor.black
//        scaleXLabel.color = UIColor.black
//        scaleYLabel.color = UIColor.black
//        scaleZLabel.color = UIColor.black
//        orientationWLabel.color = UIColor.black
//        orientationXLabel.color = UIColor.black
//        orientationYLabel.color = UIColor.black
//        orientationZLabel.color = UIColor.black
//        rotationWLabel.color = UIColor.black
//        rotationXLabel.color = UIColor.black
//        rotationYLabel.color = UIColor.black
//        rotationZLabel.color = UIColor.black

        label.color = UIColor.red
    }


    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("touch began")

        let touch = touches.first
        let location = touch?.location(in: self)

        switch location {
        case _ where positionXLabel.contains(location!) || positionXValueLabel.contains(location!):
            selectLabel(label: positionXLabel)
            overlayDelegate?.variableSelect(label: positionXLabel)
        case _ where positionYLabel.contains(location!) || positionYValueLabel.contains(location!):
            selectLabel(label: positionYLabel)
            overlayDelegate?.variableSelect(label: positionYLabel)
        case _ where positionZLabel.contains(location!) || positionZValueLabel.contains(location!):
            selectLabel(label: positionZLabel)
            overlayDelegate?.variableSelect(label: positionZLabel)
        case _ where testX.contains(location!):
            selectLabel(label: testX)
            overlayDelegate?.variableSelect(label: testX)
        default:
            positionXLabel.fontColor = UIColor.red
            overlayDelegate?.variableSelect(label: positionXLabel)
        }
    
        
    }
}
