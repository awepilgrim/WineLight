//
//  Extensions.swift
//  WineLight
//
//  Created by Олег Семёнов on 10.10.2022.
//

import UIKit

extension UIViewController {
    func changeWindow(to rootController: UIViewController) {
        guard let scene = UIApplication.shared.connectedScenes.first?.delegate as? SceneDelegate else {return}
        guard let window = scene.window else {return}
        let vc = rootController
        let rootVC = UINavigationController(rootViewController: vc)
        window.rootViewController = rootVC
        window.makeKeyAndVisible()
    }
}
