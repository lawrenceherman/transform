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

class GameViewController: UIViewController {

//    var positionX: UISlider!
//    var positionY: UISlider!
//    var positionZ: UISlider!
    
    var scene: SCNScene!
    var ship: SCNNode!
    var overlayScene: SKScene!
    
    
    
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
 
//        positionX = UISlider(frame: CGRect(x: 50, y: 80, width: 150, height: 20))
//        positionX.minimumValue = -50
//        positionX.maximumValue = 50
//        positionX.isContinuous = true
//        positionX.addTarget(self, action: #selector(positionXValueChange(_:)) , for: .valueChanged)
//        scnView.addSubview(positionX)
        
//        positionY = UISlider(frame: CGRect(x: 50, y: 120, width: 150, height: 20))
//        positionY.minimumValue = -50
//        positionY.maximumValue = 50
//        positionY.isContinuous = true
//        positionY.addTarget(self, action: #selector(positionYValueChange(_:)), for: .valueChanged)
//        scnView.addSubview(positionY)
//
//        positionZ = UISlider(frame: CGRect(x: 50, y: 160, width: 150, height: 20))
//        positionZ.minimumValue = -50
//        positionZ.maximumValue = 50
//        positionZ.isContinuous = true
//        positionZ.addTarget(self, action: #selector(positionZValueChange(_:)), for: .valueChanged)
//        scnView.addSubview(positionZ)
        
        
        
   
        
        // set the scene to the view
        scnView.scene = scene
        
        // allows the user to manipulate the camera
        //        scnView.allowsCameraControl = false
        
        // configure the view
        scnView.backgroundColor = UIColor.white
     
//        print(ship.position)
        
//        // add a tap gesture recognizer
//        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
//        scnView.addGestureRecognizer(tapGesture)
    
        overlayScene = SKScene(fileNamed: "skOverlay.sks")
        scnView.overlaySKScene = overlayScene
    
        
    
    
    
    
    
    
    
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        print(touches)
//            let previousValue = touches.first!.previousLocation(in: self.view)
//            let currentValue = touches.first!.location(in: self.view)
//            let difference = Float(currentValue.x) - Float(previousValue.x)
//            var eulerVector = gameScene.cameraNode.eulerAngles
//            eulerVector.y = eulerVector.y + (difference/100)
//            gameScene.cameraNode.eulerAngles = eulerVector
//
    }
    
//    @objc func positionXValueChange(_ sender: UISlider!) {
//        print(positionX.value)
//        ship.position.x = positionX.value
//        
//    }
//    
//    @objc func positionYValueChange(_ sender: UISlider!) {
//        ship.position.y = positionY.value
//    }
//    
//    @objc func positionZValueChange(_ sender: UISlider!) {
//        ship.position.z = positionZ.value
//    }
//    

    
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
