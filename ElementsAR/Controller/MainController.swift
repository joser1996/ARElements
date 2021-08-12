//
//  MainController.swift
//  ElementsAR
//
//  Created by Jose Torres-Vargas on 8/12/21.
//

import UIKit
import ARKit

class MainController: UIViewController {
    let arView: ARSCNView = ARSCNView()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        guard ARWorldTrackingConfiguration.isSupported else {
            fatalError("AR is not supported on this device")
        }
        //configure ar session
        let arConfiguration = ARWorldTrackingConfiguration()
        arConfiguration.planeDetection = .horizontal
        
        arView.session.run(arConfiguration)
        arView.session.delegate = self
        arView.debugOptions = [ARSCNDebugOptions.showFeaturePoints]
        //dont want the app to sleep
        //MARK: Will Remove this
        UIApplication.shared.isIdleTimerDisabled = true
    }
    
    
    
    func setUp() {
        // add the arView
        view.addSubview(arView)
        //constraints
        arView.translatesAutoresizingMaskIntoConstraints = false
        let hConstraints = NSLayoutConstraint.constraints(withVisualFormat:"H:|-[arView]-|" , options: [], metrics: nil, views: ["arView": arView])
        let vConstraints = NSLayoutConstraint.constraints(withVisualFormat:"V:|-[arView]-|" , options: [], metrics: nil, views: ["arView": arView])
        view.addConstraints(hConstraints)
        view.addConstraints(vConstraints)
        
        //add gesture recognizer
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        self.view.addGestureRecognizer(tap)
        self.view.isUserInteractionEnabled = true
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        print("Hello World!")
    }
    
}


extension MainController: ARSCNViewDelegate, ARSessionDelegate {
    func renderer(_ renderer: SCNSceneRenderer, didAdd node: SCNNode, for anchor: ARAnchor) {
        
    }
    
}
