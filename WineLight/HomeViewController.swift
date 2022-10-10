//
//  ViewController.swift
//  WineLight
//
//  Created by Олег Семёнов on 04.10.2022.
//

import UIKit

class HomeViewController: UIViewController {
    
    let homeView = HomeView()
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(homeView)
        
        homeView.startButton.addTarget(self, action: #selector(startTapped), for: .touchUpInside)
    }
    
    @objc func startTapped() {
        changeWindow(to: LoadingViewController())
    }
}
