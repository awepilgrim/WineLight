//
//  BrightnessViewController.swift
//  WineLight
//
//  Created by Олег Семёнов on 10.10.2022.
//

import UIKit

class BrightnessViewController: UIViewController {
    
    let brightnessView = BrightnessView()
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .darkContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(brightnessView)
        
        setBrightness()
    }
    
    func setBrightness() {
        
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(panRecognize(_:)))
        panGesture.delegate = self
        panGesture.minimumNumberOfTouches = 1
        panGesture.allowedScrollTypesMask = .continuous
        view.addGestureRecognizer(panGesture)
    }
    
    @objc func panRecognize(_ sender: UIPanGestureRecognizer) {
        
        var brightness: Float = Float(UIScreen.main.brightness)
        
        if sender.state == .changed {
            let velocity: CGPoint = sender.velocity(in: self.view)
            
            // Доступная площадь для свайпа — скорость и ширина коридора — описаны как константы структуры SwipeConstants
            if velocity.x > SwipeConstants.swipeVelocity && velocity.y < SwipeConstants.swipeWidth && velocity.y > -SwipeConstants.swipeWidth {
                brightness = brightness + SwipeConstants.brightnessVelocity
                UIScreen.main.brightness = CGFloat(brightness)
            }
            else if velocity.x < -SwipeConstants.swipeVelocity && velocity.y < SwipeConstants.swipeWidth && velocity.y > -SwipeConstants.swipeWidth {
                brightness = brightness - SwipeConstants.brightnessVelocity
                UIScreen.main.brightness = CGFloat(brightness)
            }
            DispatchQueue.main.async {
                self.brightnessView.brightnessLabel.text = String(Int(Float(UIScreen.main.brightness) * 100)) + "%"
                print(String(Float(UIScreen.main.brightness)))
            }
        }
    }
}

extension BrightnessViewController: UIGestureRecognizerDelegate {
}
