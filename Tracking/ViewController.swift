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
        let node = SCNNode()
        node.geometry = SCNBox(width: 0.1, height: 0.1, length: 0.1, chamferRadius: 0.02)
        node.geometry?.firstMaterial?.diffuse.contents = UIColor.green
        self.sceneView.scene.rootNode.addChildNode(node)
    }
    
}

