//
//  BrightnessView.swift
//  WineLight
//
//  Created by Олег Семёнов on 10.10.2022.
//

import UIKit

class BrightnessView: UIView {
    
    let swipeImageView = UIImageView()
    let hintLabel = UILabel()
    let brightnessLabel = UILabel()
   

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        
        swipeImageView.image = UIImage(named: "swipe")
        swipeImageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(swipeImageView)
        
        hintLabel.font = UIFont(name: "HelveticaNeue-Light", size: 16)
        hintLabel.text = "Swipe to change Brightness"
        hintLabel.numberOfLines = 0
        hintLabel.textColor = UIColor(red: 0.667, green: 0.737, blue: 0.816, alpha: 1)
        hintLabel.textAlignment = .center
        hintLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(hintLabel)
        
        brightnessLabel.font = UIFont(name: "HelveticaNeue-Light", size: 16)
        brightnessLabel.text = "0%"
        brightnessLabel.numberOfLines = 0
        brightnessLabel.textColor = UIColor(red: 0.667, green: 0.737, blue: 0.816, alpha: 1)
        brightnessLabel.textAlignment = .center
        brightnessLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(brightnessLabel)
        
        makeConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func makeConstraints() {
        
        swipeImageView.topAnchor.constraint(equalTo: topAnchor, constant: 343).isActive = true
        swipeImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true

        hintLabel.topAnchor.constraint(equalTo: swipeImageView.bottomAnchor, constant: 17).isActive = true
        hintLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        hintLabel.widthAnchor.constraint(greaterThanOrEqualToConstant: 200).isActive = true
        hintLabel.heightAnchor.constraint(greaterThanOrEqualToConstant: 40).isActive = true
        
        brightnessLabel.topAnchor.constraint(equalTo: bottomAnchor, constant: -80).isActive = true
        brightnessLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        brightnessLabel.widthAnchor.constraint(greaterThanOrEqualToConstant: 200).isActive = true
        brightnessLabel.heightAnchor.constraint(greaterThanOrEqualToConstant: 40).isActive = true
    }
}

