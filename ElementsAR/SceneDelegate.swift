//
//  SceneDelegate.swift
//  ElementsAR
//
//  Created by Jose Torres-Vargas on 8/12/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else {return}
        let window = UIWindow(windowScene: windowScene)
        let mainController = MainController()
        let navigationController = UINavigationController(rootViewController: mainController)
        navigationController.setNavigationBarHidden(true, animated: false)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        self.window = window
    }

}

