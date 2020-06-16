//
//  ViewController.swift
//  Tracking
//
//  Created by Iurie Guzun on 2020-06-16.
//  Copyright © 2020 Iurie Guzun. All rights reserved.
//

import UIKit
import ARKit

class ViewController: UIViewController {

    @IBOutlet weak var sceneView: ARSCNView!
    let configuration = ARWorldTrackingConfiguration()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.sceneView.debugOptions = [ARSCNDebugOptions.showFeaturePoints, ARSCNDebugOptions.showWorldOrigin]
        self.sceneView.session.run(configuration)
    }

    @IBAction func add(_ sender: Any) {
        let pyramid = SCNNode(geometry: SCNPyramid(width: 0.1, height: 0.1, length: 0.1))
        pyramid.geometry?.firstMaterial?.diffuse.contents = UIColor.green
        pyramid.position = SCNVector3(0, 0, -0.3)
        pyramid.eulerAngles = SCNVector3(Float(180.degreeToRadians), 0, 0)
        self.sceneView.scene.rootNode.addChildNode(pyramid)
        
        
//        let node = SCNNode()
//        node.geometry = SCNBox(width: 0.1, height: 0.1, length: 0.1, chamferRadius: 0.02)
//        node.geometry?.firstMaterial?.diffuse.contents = UIColor.green
//        node.position = SCNVector3(0,0,-0.3)
//        self.sceneView.scene.rootNode.addChildNode(node)
    }
    
}

extension Int {
    var degreeToRadians: Double {
        return Double(self) * .pi/180
    }
}
