//
//  GameViewController.swift
//  transform
//
//  Created by Lawrence Herman on 8/24/17.
//  Copyright © 2017 Lawrence Herman. All rights reserved.
//

import UIKit
import QuartzCore
import SceneKit
import SpriteKit

class GameViewController: UIViewController, OverlaySceneDelegate {

    var shipSlider: UISlider!
//    var positionY: UISlider!
//    var positionZ: UISlider!
    
    var scene: SCNScene!
    var ship: SCNNode!
    var overlayScene: SkOverlay!
    var selectedProperty: SKLabelNode!
    
//    var positionXValue: Int!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // create a new scene
        scene = SCNScene(named: "art.scnassets/ship.scn")!
        
        // create and add a camera to the scene
        let cameraNode = SCNNode()
        cameraNode.camera = SCNCamera()
        scene.rootNode.addChildNode(cameraNode)
        
        // place the camera
        cameraNode.position = SCNVector3(x: 0, y: 0, z: 30)
        
        // create and add a light to the scene
        let lightNode = SCNNode()
        lightNode.light = SCNLight()
        lightNode.light!.type = .omni
        lightNode.position = SCNVector3(x: 0, y: 10, z: 10)
        scene.rootNode.addChildNode(lightNode)
        
        // create and add an ambient light to the scene
        let ambientLightNode = SCNNode()
        ambientLightNode.light = SCNLight()
        ambientLightNode.light!.type = .ambient
        ambientLightNode.light!.color = UIColor.darkGray
        scene.rootNode.addChildNode(ambientLightNode)
        
        // retrieve the ship node
        ship = scene.rootNode.childNode(withName: "ship", recursively: true)!

        
        
        
        let scnView = self.view as! SCNView

    
        
        
        // set the scene to the view
        scnView.scene = scene


        // configure the view
        scnView.backgroundColor = UIColor.white
     
        
    
       overlayScene = SKScene(fileNamed: "skOverlay.sks") as! SkOverlay
//       overlayScene = SkOverlay(size: view.bounds.size)
        overlayScene.overlayDelegate = self
      

        
        scnView.overlaySKScene = overlayScene
        
        shipSlider = UISlider(frame: CGRect(x: 50, y: 80, width: 150, height: 20))
        shipSlider.minimumValue = -50
        shipSlider.maximumValue = 50
        shipSlider.isContinuous = true
        shipSlider.addTarget(self, action: #selector(shipSliderValueChange(_:)) , for: .valueChanged)
        scnView.addSubview(shipSlider)
        
        
    }
    
    func variableSelect(label: SKLabelNode) {
        selectedProperty = label
        print(selectedProperty.description)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        print(touches)
//        print("touch began")
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
//        print(touches)
//        print("touches moved")
//        print(touches)
//            let previousValue = touches.first!.previousLocation(in: self.view)
//            let currentValue = touches.first!.location(in: self.view)
//            let difference = Float(currentValue.x) - Float(previousValue.x)
//            var eulerVector = gameScene.cameraNode.eulerAngles
//            eulerVector.y = eulerVector.y + (difference/100)
//            gameScene.cameraNode.eulerAngles = eulerVector
//
    }
    
    @objc func shipSliderValueChange(_ sender: UISlider!) {
     
        let name = selectedProperty.name!
        
        switch name {
        case "positionXLabel":
            ship.position.x = sender.value
            upDateOverlay()
        case "positionYLabel":
            ship.position.y = sender.value
            upDateOverlay()
        case "positionZLabel":
            ship.position.z = sender.value
            upDateOverlay()
        default:
            ship.position.x = sender.value
            upDateOverlay()
        }

    }
    
    func upDateOverlay() {
        
        overlayScene.positionXValue = ship.position.x
        overlayScene.positionYValue = ship.position.y
        overlayScene.positionZValue = ship.position.z
        
        
        overlayScene.positionXValueLabel.text = String(overlayScene.positionXValue)
        overlayScene.positionYValueLabel.text = String(overlayScene.positionYValue)
        overlayScene.positionZValueLabel.text = String(overlayScene.positionZValue)

    }
    

    override var shouldAutorotate: Bool {
        return true
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

}





