//
//  LoadingViewController.swift
//  WineLight
//
//  Created by Олег Семёнов on 07.10.2022.
//

import UIKit

class LoadingViewController: UIViewController {
    
    let loadingView = LoadingView()
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(loadingView)
        Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(delayedTransition), userInfo: nil, repeats: false)
    }
    
    @objc func delayedTransition() {
        changeWindow(to: BrightnessViewController())
    }
    
}
