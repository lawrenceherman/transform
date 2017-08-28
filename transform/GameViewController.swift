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
        
        
        
        
        shipSlider = UISlider(frame: CGRect(x: 50, y: 80, width: 400, height: 20))
        shipSlider.translatesAutoresizingMaskIntoConstraints = false
        shipSlider.minimumValue = -50
        shipSlider.maximumValue = 50
        shipSlider.isContinuous = true
        shipSlider.addTarget(self, action: #selector(shipSliderValueChange(_:)) , for: .valueChanged)
        scnView.addSubview(shipSlider)
        
        upDateOverlay()
        
        shipSlider.leadingAnchor.constraint(equalTo: scnView.leadingAnchor, constant: 50).isActive = true
        
        shipSlider.bottomAnchor.constraint(equalTo: scnView.bottomAnchor).isActive = true
        
        shipSlider.trailingAnchor.constraint(equalTo: scnView.trailingAnchor, constant: -50.0).isActive = true
        
    }
    
    func sliderValues(label: SKLabelNode) {
        
        let name = label.name

        if name == "positionXLabel" || name == "positionYLabel" || name == "positionZLabel" {
            shipSlider.minimumValue = -50
            shipSlider.maximumValue = 50
        }
        
        if name == "eulerXLabel" || name == "eulerYLabel" || name == "eulerZLabel" {
            shipSlider.minimumValue = 0
            shipSlider.maximumValue =  2 * .pi
        }
        
        if name == "scaleXLabel" || name == "scaleYLabel" || name == "scaleZLabel" {
            shipSlider.minimumValue = 0
            shipSlider.maximumValue = 3
        }
     
        
        
        
        
        
        
    }
    
    
    func variableSelect(label: SKLabelNode) {
        selectedProperty = label
    
        sliderValues(label: label)
    
    
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
        case "eulerXLabel":
            ship.eulerAngles.x = sender.value
            upDateOverlay()
        case "eulerYLabel":
            ship.eulerAngles.y = sender.value
            upDateOverlay()
        case "eulerZLabel":
            ship.eulerAngles.z = sender.value
            upDateOverlay()
        case "scaleXLabel":
            ship.scale.x = sender.value
            upDateOverlay()
        case "scaleYLabel":
            ship.scale.y = sender.value
            upDateOverlay()
        case "scaleZLabel":
            ship.scale.z = sender.value
            upDateOverlay()
        case "orientationWLabel":
            ship.orientation.w = sender.value
            upDateOverlay()
        case "orientationXLabel":
            ship.orientation.x = sender.value
            upDateOverlay()
        case "orientationYLabel":
            ship.orientation.y = sender.value
            upDateOverlay()
        case "orientationZLabel":
            ship.orientation.z = sender.value
            upDateOverlay()
        case "rotationWLabel":
            ship.rotation.w = sender.value
            upDateOverlay()
        case "rotationXLabel":
            ship.rotation.x = sender.value
            upDateOverlay()
        case "rotationYLabel":
            ship.rotation.y = sender.value
            upDateOverlay()
        case "rotationZLabel":
            ship.rotation.z = sender.value
            upDateOverlay()
        case "pivot11Label":
            ship.pivot.m11 = sender.value
            upDateOverlay()
        case "pivot12Label":
            ship.pivot.m12 = sender.value
            upDateOverlay()
        case "pivot13Label":
            ship.pivot.m13 = sender.value
            upDateOverlay()
        case "pivot14Label":
            ship.pivot.m14 = sender.value
            upDateOverlay()
        case "pivot21Label":
            ship.pivot.m21 = sender.value
            upDateOverlay()
        case "pivot22Label":
            ship.pivot.m22 = sender.value
            upDateOverlay()
        case "pivot23Label":
            ship.pivot.m23 = sender.value
            upDateOverlay()
        case "pivot24Label":
            ship.pivot.m24 = sender.value
            upDateOverlay()
        case "pivot31Label":
            ship.pivot.m31 = sender.value
            upDateOverlay()
        case "pivot32Label":
            ship.pivot.m32 = sender.value
            upDateOverlay()
        case "pivot33Label":
            ship.pivot.m33 = sender.value
            upDateOverlay()
        case "pivot34Label":
            ship.pivot.m34 = sender.value
            upDateOverlay()
        case "pivot41Label":
            ship.pivot.m41 = sender.value
            upDateOverlay()
        case "pivot42Label":
            ship.pivot.m42 = sender.value
            upDateOverlay()
        case "pivot43Label":
            ship.pivot.m43 = sender.value
            upDateOverlay()
        case "pivot44Label":
            ship.pivot.m44 = sender.value
            upDateOverlay()
        case "transform11Label":
            ship.transform.m11 = sender.value
            upDateOverlay()
        case "transform12Label":
            ship.transform.m12 = sender.value
            upDateOverlay()
        case "transform13Label":
            ship.transform.m13 = sender.value
            upDateOverlay()
        case "transform14Label":
            ship.transform.m14 = sender.value
            upDateOverlay()
        case "transform21Label":
            ship.transform.m21 = sender.value
            upDateOverlay()
        case "transform22Label":
            ship.transform.m22 = sender.value
            upDateOverlay()
        case "transform23Label":
            ship.transform.m23 = sender.value
            upDateOverlay()
        case "transform24Label":
            ship.transform.m24 = sender.value
            upDateOverlay()
        case "transform31Label":
            ship.transform.m31 = sender.value
            upDateOverlay()
        case "transform32Label":
            ship.transform.m32 = sender.value
            upDateOverlay()
        case "transform33Label":
            ship.transform.m33 = sender.value
            upDateOverlay()
        case "transform34Label":
            ship.transform.m34 = sender.value
            upDateOverlay()
        case "transform41Label":
            ship.transform.m41 = sender.value
            upDateOverlay()
        case "transform42Label":
            ship.transform.m42 = sender.value
            upDateOverlay()
        case "transform43Label":
            ship.transform.m43 = sender.value
            upDateOverlay()
        case "transform44Label":
            ship.transform.m44 = sender.value
            upDateOverlay()
        
            
        default:
            print("default slider")
            upDateOverlay()
        }

    }
    
    func upDateOverlay() {
        
        overlayScene.positionXValue = ship.position.x
        overlayScene.positionYValue = ship.position.y
        overlayScene.positionZValue = ship.position.z
        
        overlayScene.eulerXValue = ship.eulerAngles.x
        overlayScene.eulerYValue = ship.eulerAngles.y
        overlayScene.eulerZValue = ship.eulerAngles.z
        
        overlayScene.scaleXValue = ship.scale.x
        overlayScene.scaleYValue = ship.scale.y
        overlayScene.scaleZValue = ship.scale.z
        
        overlayScene.orientationWValue = ship.orientation.w
        overlayScene.orientationXValue = ship.orientation.x
        overlayScene.orientationYValue = ship.orientation.y
        overlayScene.orientationZValue = ship.orientation.z
        
        overlayScene.rotationWValue = ship.rotation.w
        overlayScene.rotationXValue = ship.rotation.x
        overlayScene.rotationYValue = ship.rotation.y
        overlayScene.rotationZValue = ship.rotation.z
        
        overlayScene.pivot11Value = ship.pivot.m11
        overlayScene.pivot12Value = ship.pivot.m12
        overlayScene.pivot13Value = ship.pivot.m13
        overlayScene.pivot14Value = ship.pivot.m14
        
        overlayScene.pivot21Value = ship.pivot.m21
        overlayScene.pivot22Value = ship.pivot.m22
        overlayScene.pivot23Value = ship.pivot.m23
        overlayScene.pivot24Value = ship.pivot.m24
        
        overlayScene.pivot31Value = ship.pivot.m31
        overlayScene.pivot32Value = ship.pivot.m32
        overlayScene.pivot33Value = ship.pivot.m33
        overlayScene.pivot34Value = ship.pivot.m34
        
        overlayScene.pivot41Value = ship.pivot.m41
        overlayScene.pivot42Value = ship.pivot.m42
        overlayScene.pivot43Value = ship.pivot.m43
        overlayScene.pivot44Value = ship.pivot.m44
        
        overlayScene.transform11Value = ship.transform.m11
        overlayScene.transform12Value = ship.transform.m12
        overlayScene.transform13Value = ship.transform.m13
        overlayScene.transform14Value = ship.transform.m14
        
        overlayScene.transform21Value = ship.transform.m21
        overlayScene.transform22Value = ship.transform.m22
        overlayScene.transform23Value = ship.transform.m23
        overlayScene.transform24Value = ship.transform.m24
        
        overlayScene.transform31Value = ship.transform.m31
        overlayScene.transform32Value = ship.transform.m32
        overlayScene.transform33Value = ship.transform.m33
        overlayScene.transform34Value = ship.transform.m34
        
        overlayScene.transform41Value = ship.transform.m41
        overlayScene.transform42Value = ship.transform.m42
        overlayScene.transform43Value = ship.transform.m43
        overlayScene.transform44Value = ship.transform.m44
        
        
        

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





