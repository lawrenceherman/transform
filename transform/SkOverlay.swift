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
    var positionXLabel, positionYLabel, positionZLabel, eulerXLabel, eulerYLabel, eulerZLabel, scaleXLabel, scaleYLabel, scaleZLabel, orientationWLabel, orientationXLabel, orientationYLabel, orientationZLabel, rotationWLabel, rotationXLabel, rotationYLabel, rotationZLabel, pivot11Label, pivot12Label, pivot13Label, pivot14Label, pivot21Label, pivot22Label, pivot23Label, pivot24Label, pivot31Label, pivot32Label, pivot33Label, pivot34Label, pivot41Label, pivot42Label, pivot43Label, pivot44Label: SKLabelNode!
    
    
//
//    , pivot21Label, pivot22Label, pivot23Label, pivot23Label, pivot24Label, pivot31Label, pivot32Label, pivot33Label, pivot34Label, pivot41Label, pivot42Label, pivot43Label, pivot44Label: SKLabelNode!
    

//    var positionXValueLabel, positionYValueLabel, positionZValueLabel, eulerXValueLabel, eulerYValueLabel, eulerZValueLabel, scaleXValueLabel, scaleYValueLabel, scaleZValueLabel, orientationWValueLabel, orientationXValueLabel, orientationYValueLabel, orientationZValueLabel, rotationWValueLabel, rotationXValueLabel, rotationYValueLabel, rotationZValueLabel: SKLabelNode!
    
    
    
 
    
    //////////// postion values
    
    var positionXValue: Float! {
        didSet {
            let value = String.init(format: "%.2f", positionXValue)
            switch value.count {
            case 4:
                positionXLabel.text = ".x    " + value
            case 5:
                positionXLabel.text = ".x   " + value
            case 6:
                positionXLabel.text = ".x  " + value
            default:
                positionXLabel.text = ".x    " + value
            }
        }
    }
    
    var positionYValue: Float! {
        didSet {
            let value = String.init(format: "%.2f", positionYValue)
            switch value.count {
            case 4:
                positionYLabel.text = ".y    " + value
            case 5:
                positionYLabel.text = ".y   " + value
            case 6:
                positionYLabel.text = ".y " + value
            default:
                positionYLabel.text = ".y    " + value
            }
        }
    }
    
    var positionZValue: Float! {
        didSet {
            let value = String.init(format: "%.2f", positionZValue)
            switch value.count {
            case 4:
                positionZLabel.text = ".z    " + value
            case 5:
                positionZLabel.text = ".z   " + value
            case 6:
                positionZLabel.text = ".z  " + value
            default:
                positionZLabel.text = ".z    " + value
            }
        }
    }
    
    ///////////// euler values
    
    var eulerXValue: Float! {
        didSet {
            let value = String.init(format: "%.2f", eulerXValue)
            switch value.count {
            case 4:
                eulerXLabel.text = ".x    " + value
            case 5:
                eulerXLabel.text = ".x   " + value
            case 6:
                eulerXLabel.text = ".x  " + value
            default:
                eulerXLabel.text = ".x    " + value
            }
        }
    }
    
    var eulerYValue: Float! {
        didSet {
            let value = String.init(format: "%.2f", eulerYValue)
            switch value.count {
            case 4:
                eulerYLabel.text = ".y    " + value
            case 5:
                eulerYLabel.text = ".y   " + value
            case 6:
                eulerYLabel.text = ".y " + value
            default:
                eulerYLabel.text = ".y    " + value
            }
        }
    }
    
    var eulerZValue: Float! {
        didSet {
            let value = String.init(format: "%.2f", eulerZValue)
            switch value.count {
            case 4:
                eulerZLabel.text = ".z    " + value
            case 5:
                eulerZLabel.text = ".z   " + value
            case 6:
                eulerZLabel.text = ".z  " + value
            default:
                eulerZLabel.text = ".z    " + value
            }
        }
    }
    
    //////////// scale values
    
    var scaleXValue: Float! {
        didSet {
            let value = String.init(format: "%.2f", scaleXValue)
            switch value.count {
            case 4:
                scaleXLabel.text = ".x    " + value
            case 5:
                scaleXLabel.text = ".x   " + value
            case 6:
                scaleXLabel.text = ".x  " + value
            default:
                scaleXLabel.text = ".x    " + value
            }
        }
    }
    
    var scaleYValue: Float! {
        didSet {
            let value = String.init(format: "%.2f", scaleYValue)
            switch value.count {
            case 4:
                scaleYLabel.text = ".y    " + value
            case 5:
                scaleYLabel.text = ".y   " + value
            case 6:
                scaleYLabel.text = ".y " + value
            default:
                scaleYLabel.text = ".y    " + value
            }
        }
    }
    
    var scaleZValue: Float! {
        didSet {
            let value = String.init(format: "%.2f", scaleZValue)
            switch value.count {
            case 4:
                scaleZLabel.text = ".z    " + value
            case 5:
                scaleZLabel.text = ".z   " + value
            case 6:
                scaleZLabel.text = ".z  " + value
            default:
                scaleZLabel.text = ".z    " + value
            }
        }
    }
    
    ///////////////////// orientaion Values
    
    
    var orientationWValue: Float! {
        didSet {
            let value = String.init(format: "%.2f", orientationWValue)
            switch value.count {
            case 4:
                orientationWLabel.text = ".w    " + value
            case 5:
                orientationWLabel.text = ".w   " + value
            case 6:
                orientationWLabel.text = ".w  " + value
            default:
                orientationWLabel.text = "error"
            }
        }
    }
    
    var orientationXValue: Float! {
        didSet {
            let value = String.init(format: "%.2f", orientationXValue)
            switch value.count {
            case 4:
                orientationXLabel.text = ".x    " + value
            case 5:
                orientationXLabel.text = ".x   " + value
            case 6:
                orientationXLabel.text = ".x  " + value
            default:
                orientationXLabel.text = ".x    " + value
            }
        }
    }
    
    var orientationYValue: Float! {
        didSet {
            let value = String.init(format: "%.2f", orientationYValue)
            switch value.count {
            case 4:
                orientationYLabel.text = ".y    " + value
            case 5:
                orientationYLabel.text = ".y   " + value
            case 6:
                orientationYLabel.text = ".y " + value
            default:
                orientationYLabel.text = ".y    " + value
            }
        }
    }
    
    var orientationZValue: Float!{
        didSet {
            let value = String.init(format: "%.2f", orientationZValue)
            switch value.count {
            case 4:
                orientationZLabel.text = ".z    " + value
            case 5:
                orientationZLabel.text = ".z   " + value
            case 6:
                orientationZLabel.text = ".z  " + value
            default:
                orientationZLabel.text = ".z    " + value
            }
        }
    }
    
    ////////////////// rotation values
    
    var rotationWValue: Float! {
        didSet {
            let value = String.init(format: "%.2f", rotationWValue)
            switch value.count {
            case 4:
                rotationWLabel.text = ".w    " + value
            case 5:
                rotationWLabel.text = ".w   " + value
            case 6:
                rotationWLabel.text = ".w  " + value
            default:
                rotationWLabel.text = "error"
            }
        }
    }
    
    var rotationXValue: Float! {
        didSet {
            let value = String.init(format: "%.2f", rotationXValue)
            switch value.count {
            case 4:
                rotationXLabel.text = ".x    " + value
            case 5:
                rotationXLabel.text = ".x   " + value
            case 6:
                rotationXLabel.text = ".x  " + value
            default:
                rotationXLabel.text = ".x    " + value
            }
        }
    }
    
    var rotationYValue: Float! {
        didSet {
            let value = String.init(format: "%.2f", rotationYValue)
            switch value.count {
            case 4:
                rotationYLabel.text = ".y    " + value
            case 5:
                rotationYLabel.text = ".y   " + value
            case 6:
                rotationYLabel.text = ".y " + value
            default:
                rotationYLabel.text = ".y    " + value
            }
        }
    }
    
    var rotationZValue: Float!{
        didSet {
            let value = String.init(format: "%.2f", rotationZValue)
            switch value.count {
            case 4:
                rotationZLabel.text = ".z    " + value
            case 5:
                rotationZLabel.text = ".z   " + value
            case 6:
                rotationZLabel.text = ".z  " + value
            default:
                rotationZLabel.text = ".z    " + value
            }
        }
    }
    
    var pivot11Value: Float!{
        didSet {
            let value = String.init(format: "%.2f", pivot11Value)
            switch value.count {
            case 4:
                pivot11Label.text = ".m11    " + value
            case 5:
                pivot11Label.text = ".m11   " + value
            case 6:
                pivot11Label.text = ".m11 " + value
            default:
                pivot11Label.text = ".m11    " + value
            }
        }
    }
    
    var pivot12Value: Float!{
        didSet {
            let value = String.init(format: "%.2f", pivot12Value)
            switch value.count {
            case 4:
                pivot12Label.text = ".m12    " + value
            case 5:
                pivot12Label.text = ".m12   " + value
            case 6:
                pivot12Label.text = ".m12 " + value
            default:
                pivot12Label.text = ".m12    " + value
            }
        }
    }
    
    var pivot13Value: Float!{
        didSet {
            let value = String.init(format: "%.2f", pivot13Value)
            switch value.count {
            case 4:
                pivot13Label.text = ".m13    " + value
            case 5:
                pivot13Label.text = ".m13   " + value
            case 6:
                pivot13Label.text = ".m13 " + value
            default:
                pivot13Label.text = ".m13   " + value
            }
        }
    }
    
    var pivot14Value: Float!{
        didSet {
            let value = String.init(format: "%.2f", pivot14Value)
            switch value.count {
            case 4:
                pivot14Label.text = ".m14    " + value
            case 5:
                pivot14Label.text = ".m14   " + value
            case 6:
                pivot14Label.text = ".m14 " + value
            default:
                pivot14Label.text = ".m14    " + value
            }
        }
    }
    
    var pivot21Value: Float!{
        didSet {
            let value = String.init(format: "%.2f", pivot21Value)
            switch value.count {
            case 4:
                pivot21Label.text = ".m21    " + value
            case 5:
                pivot21Label.text = ".m21   " + value
            case 6:
                pivot21Label.text = ".m21 " + value
            default:
                pivot21Label.text = ".m21   " + value
            }
        }
    }
    
    var pivot22Value: Float!{
        didSet {
            let value = String.init(format: "%.2f", pivot22Value)
            switch value.count {
            case 4:
                pivot22Label.text = ".m22    " + value
            case 5:
                pivot22Label.text = ".m22   " + value
            case 6:
                pivot22Label.text = ".m22 " + value
            default:
                pivot22Label.text = ".m22    " + value
            }
        }
    }
    
    var pivot23Value: Float!{
        didSet {
            let value = String.init(format: "%.2f", pivot23Value)
            switch value.count {
            case 4:
                pivot23Label.text = ".m23    " + value
            case 5:
                pivot23Label.text = ".m23   " + value
            case 6:
                pivot23Label.text = ".m23 " + value
            default:
                pivot23Label.text = ".m23   " + value
            }
        }
    }
    
    var pivot24Value: Float!{
        didSet {
            let value = String.init(format: "%.2f", pivot24Value)
            switch value.count {
            case 4:
                pivot24Label.text = ".m24    " + value
            case 5:
                pivot24Label.text = ".m24   " + value
            case 6:
                pivot24Label.text = ".m24 " + value
            default:
                pivot24Label.text = ".m24    " + value
            }
        }
    }
    
    var pivot31Value: Float!{
        didSet {
            let value = String.init(format: "%.2f", pivot31Value)
            switch value.count {
            case 4:
                pivot31Label.text = ".m31    " + value
            case 5:
                pivot31Label.text = ".m31   " + value
            case 6:
                pivot31Label.text = ".m31 " + value
            default:
                pivot31Label.text = ".m31    " + value
            }
        }
    }
    
    var pivot32Value: Float!{
        didSet {
            let value = String.init(format: "%.2f", pivot32Value)
            switch value.count {
            case 4:
                pivot32Label.text = ".m32    " + value
            case 5:
                pivot32Label.text = ".m32   " + value
            case 6:
                pivot32Label.text = ".m32 " + value
            default:
                pivot32Label.text = ".m32    " + value
            }
        }
    }
    
    var pivot33Value: Float!{
        didSet {
            let value = String.init(format: "%.2f", pivot33Value)
            switch value.count {
            case 4:
                pivot33Label.text = ".m33    " + value
            case 5:
                pivot33Label.text = ".m33   " + value
            case 6:
                pivot33Label.text = ".m33 " + value
            default:
                pivot33Label.text = ".m33   " + value
            }
        }
    }
    
    var pivot34Value: Float!{
        didSet {
            let value = String.init(format: "%.2f", pivot34Value)
            switch value.count {
            case 4:
                pivot34Label.text = ".m34    " + value
            case 5:
                pivot34Label.text = ".m34   " + value
            case 6:
                pivot34Label.text = ".m34 " + value
            default:
                pivot34Label.text = ".m34    " + value
            }
        }
    }
    
    var pivot41Value: Float!{
        didSet {
            let value = String.init(format: "%.2f", pivot41Value)
            switch value.count {
            case 4:
                pivot41Label.text = ".m41    " + value
            case 5:
                pivot41Label.text = ".m41   " + value
            case 6:
                pivot41Label.text = ".m41 " + value
            default:
                pivot41Label.text = ".m41    " + value
            }
        }
    }
    
    var pivot42Value: Float!{
        didSet {
            let value = String.init(format: "%.2f", pivot42Value)
            switch value.count {
            case 4:
                pivot42Label.text = ".m42    " + value
            case 5:
                pivot42Label.text = ".m42   " + value
            case 6:
                pivot42Label.text = ".m42 " + value
            default:
                pivot42Label.text = ".m42    " + value
            }
        }
    }
    
    var pivot43Value: Float!{
        didSet {
            let value = String.init(format: "%.2f", pivot43Value)
            switch value.count {
            case 4:
                pivot43Label.text = ".m43    " + value
            case 5:
                pivot43Label.text = ".m43   " + value
            case 6:
                pivot43Label.text = ".m43 " + value
            default:
                pivot43Label.text = ".m43   " + value
            }
        }
    }
    
    var pivot44Value: Float!{
        didSet {
            let value = String.init(format: "%.2f", pivot44Value)
            switch value.count {
            case 4:
                pivot44Label.text = ".m44    " + value
            case 5:
                pivot44Label.text = ".m44   " + value
            case 6:
                pivot44Label.text = ".m44 " + value
            default:
                pivot44Label.text = ".m44    " + value
            }
        }
    }
    
    
    
    
    

    weak var overlayDelegate: OverlaySceneDelegate?
    
  
    override func didMove(to view: SKView) {


        positionXLabel = self.childNode(withName: "positionXLabel") as! SKLabelNode
        positionYLabel = self.childNode(withName: "positionYLabel") as! SKLabelNode
        positionZLabel = self.childNode(withName: "positionZLabel") as! SKLabelNode
        
        eulerXLabel = self.childNode(withName: "eulerXLabel") as! SKLabelNode
        eulerYLabel = self.childNode(withName: "eulerYLabel") as! SKLabelNode
        eulerZLabel = self.childNode(withName: "eulerZLabel") as! SKLabelNode
        
        scaleXLabel = self.childNode(withName: "scaleXLabel") as! SKLabelNode
        scaleYLabel = self.childNode(withName: "scaleYLabel") as! SKLabelNode
        scaleZLabel = self.childNode(withName: "scaleZLabel") as! SKLabelNode
        
        orientationWLabel = self.childNode(withName: "orientationWLabel") as! SKLabelNode
        orientationXLabel = self.childNode(withName: "orientationXLabel") as! SKLabelNode
        orientationYLabel = self.childNode(withName: "orientationYLabel") as! SKLabelNode
        orientationZLabel = self.childNode(withName: "orientationZLabel") as! SKLabelNode
        
        rotationWLabel = self.childNode(withName: "rotationWLabel") as! SKLabelNode
        rotationXLabel = self.childNode(withName: "rotationXLabel") as! SKLabelNode
        rotationYLabel = self.childNode(withName: "rotationYLabel") as! SKLabelNode
        rotationZLabel = self.childNode(withName: "rotationZLabel") as! SKLabelNode
        
        pivot11Label = self.childNode(withName: "pivot11Label") as! SKLabelNode
        pivot12Label = self.childNode(withName: "pivot12Label") as! SKLabelNode
        pivot13Label = self.childNode(withName: "pivot13Label") as! SKLabelNode
        pivot14Label = self.childNode(withName: "pivot14Label") as! SKLabelNode
    
        pivot21Label = self.childNode(withName: "pivot21Label") as! SKLabelNode
        pivot22Label = self.childNode(withName: "pivot22Label") as! SKLabelNode
        pivot23Label = self.childNode(withName: "pivot23Label") as! SKLabelNode
        pivot24Label = self.childNode(withName: "pivot24Label") as! SKLabelNode
        
        pivot31Label = self.childNode(withName: "pivot31Label") as! SKLabelNode
        pivot32Label = self.childNode(withName: "pivot32Label") as! SKLabelNode
        pivot33Label = self.childNode(withName: "pivot33Label") as! SKLabelNode
        pivot34Label = self.childNode(withName: "pivot34Label") as! SKLabelNode
        
        pivot41Label = self.childNode(withName: "pivot41Label") as! SKLabelNode
        pivot42Label = self.childNode(withName: "pivot42Label") as! SKLabelNode
        pivot43Label = self.childNode(withName: "pivot43Label") as! SKLabelNode
        pivot44Label = self.childNode(withName: "pivot44Label") as! SKLabelNode
        
        
    }
    
    func selectLabel(label: SKLabelNode) {

//        positionXLabel.color = UIColor.black
//        positionYLabel.color = UIColor.black
//        positionZLabel.color = UIColor.black
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
        case _ where positionXLabel.contains(location!):
            selectLabel(label: positionXLabel)
            overlayDelegate?.variableSelect(label: positionXLabel)
        case _ where positionYLabel.contains(location!):
            selectLabel(label: positionYLabel)
            overlayDelegate?.variableSelect(label: positionYLabel)
        case _ where positionZLabel.contains(location!):
            selectLabel(label: positionZLabel)
            overlayDelegate?.variableSelect(label: positionZLabel)
        case _ where eulerXLabel.contains(location!):
            overlayDelegate?.variableSelect(label: eulerXLabel)
        case _ where eulerYLabel.contains(location!):
            overlayDelegate?.variableSelect(label: eulerYLabel)
        case _ where eulerZLabel.contains(location!):
            overlayDelegate?.variableSelect(label: eulerZLabel)
        case _ where scaleXLabel.contains(location!):
            overlayDelegate?.variableSelect(label: scaleXLabel)
        case _ where scaleYLabel.contains(location!):
            overlayDelegate?.variableSelect(label: scaleYLabel)
        case _ where scaleZLabel.contains(location!):
            overlayDelegate?.variableSelect(label: scaleZLabel)
        case _ where orientationWLabel.contains(location!):
            overlayDelegate?.variableSelect(label: orientationWLabel)
        case _ where orientationXLabel.contains(location!):
            overlayDelegate?.variableSelect(label: orientationXLabel)
        case _ where orientationYLabel.contains(location!):
            overlayDelegate?.variableSelect(label: orientationYLabel)
        case _ where orientationZLabel.contains(location!):
            overlayDelegate?.variableSelect(label: orientationZLabel)
        case _ where rotationWLabel.contains(location!):
            overlayDelegate?.variableSelect(label: rotationWLabel)
        case _ where rotationXLabel.contains(location!):
            overlayDelegate?.variableSelect(label: rotationXLabel)
        case _ where rotationYLabel.contains(location!):
            overlayDelegate?.variableSelect(label: rotationYLabel)
        case _ where rotationZLabel.contains(location!):
            overlayDelegate?.variableSelect(label: rotationZLabel)
        case _ where pivot11Label.contains(location!):
            overlayDelegate?.variableSelect(label: pivot11Label)
        case _ where pivot12Label.contains(location!):
            overlayDelegate?.variableSelect(label: pivot12Label)
        case _ where pivot13Label.contains(location!):
            overlayDelegate?.variableSelect(label: pivot13Label)
        case _ where pivot14Label.contains(location!):
            overlayDelegate?.variableSelect(label: pivot14Label)
        case _ where pivot21Label.contains(location!):
            overlayDelegate?.variableSelect(label: pivot21Label)
        case _ where pivot22Label.contains(location!):
            overlayDelegate?.variableSelect(label: pivot22Label)
        case _ where pivot23Label.contains(location!):
            overlayDelegate?.variableSelect(label: pivot23Label)
        case _ where pivot24Label.contains(location!):
            overlayDelegate?.variableSelect(label: pivot24Label)
        case _ where pivot31Label.contains(location!):
            overlayDelegate?.variableSelect(label: pivot31Label)
        case _ where pivot32Label.contains(location!):
            overlayDelegate?.variableSelect(label: pivot32Label)
        case _ where pivot33Label.contains(location!):
            overlayDelegate?.variableSelect(label: pivot33Label)
        case _ where pivot34Label.contains(location!):
            overlayDelegate?.variableSelect(label: pivot34Label)
        case _ where pivot41Label.contains(location!):
            overlayDelegate?.variableSelect(label: pivot41Label)
        case _ where pivot42Label.contains(location!):
            overlayDelegate?.variableSelect(label: pivot42Label)
        case _ where pivot43Label.contains(location!):
            overlayDelegate?.variableSelect(label: pivot43Label)
        case _ where pivot44Label.contains(location!):
            overlayDelegate?.variableSelect(label: pivot44Label)

        default:
            print("default touch")
        }
    
        
    }
}
