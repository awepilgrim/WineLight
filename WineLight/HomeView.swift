//
//  HomeView.swift
//  WineLight
//
//  Created by Олег Семёнов on 06.10.2022.
//

import UIKit

class HomeView: UIView {
    
    let logoImageView = UIImageView()
    let headingLabel = UILabel()
    let subheadingLabel = UILabel()
    let startButton = UIButton()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        
        logoImageView.image = UIImage(named: "logo")
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(logoImageView)
        
        headingLabel.font = UIFont(name: "ArialRoundedMTBold", size: 24)
        headingLabel.numberOfLines = 0
        headingLabel.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1.0)
        headingLabel.translatesAutoresizingMaskIntoConstraints = false
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.15
        headingLabel.textAlignment = .center
        headingLabel.attributedText = NSMutableAttributedString(string: "ILLUMINATE THE NEXT DIMENSION IN WINE", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        headingLabel.textAlignment = .center
        addSubview(headingLabel)
        
        subheadingLabel.textColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1.0)
        subheadingLabel.font = UIFont(name: "HelveticaNeue-Light", size: 14)
        subheadingLabel.numberOfLines = 0
        subheadingLabel.translatesAutoresizingMaskIntoConstraints = false
        paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.29
        subheadingLabel.attributedText = NSAttributedString(string: "Take a deeper look into your glass & discover all that’s hidden inside", attributes: [NSAttributedString.Key.paragraphStyle: paragraphStyle])
        subheadingLabel.textAlignment = .center
        addSubview(subheadingLabel)
        
        startButton.setTitle("Start Now", for: .normal)
        startButton.frame = CGRect(x: 0, y: 0, width: 246, height: 46)
        startButton.backgroundColor = UIColor(red: 0.608, green: 0.11, blue: 0.137, alpha: 1)
        startButton.titleLabel?.font = UIFont(name: "HelveticaNeue-Medium", size: 17)
        startButton.setTitleColor(.white, for: .normal)
        startButton.layer.cornerRadius = 24
        startButton.translatesAutoresizingMaskIntoConstraints = false
        addSubview(startButton)
        
        makeConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func makeConstraints() {
        
        logoImageView.topAnchor.constraint(equalTo: topAnchor, constant: 166).isActive = true
        logoImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        logoImageView.heightAnchor.constraint(equalToConstant: 232).isActive = true
        logoImageView.widthAnchor.constraint(equalToConstant: 232).isActive = true
        
        headingLabel.topAnchor.constraint(equalTo: topAnchor, constant: 440).isActive = true
        headingLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        headingLabel.widthAnchor.constraint(equalToConstant: 347).isActive = true
        headingLabel.heightAnchor.constraint(greaterThanOrEqualToConstant: 66).isActive = true
        
        subheadingLabel.topAnchor.constraint(equalTo: headingLabel.bottomAnchor, constant: 14).isActive = true
        subheadingLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        subheadingLabel.widthAnchor.constraint(equalToConstant: 273).isActive = true
        subheadingLabel.heightAnchor.constraint(greaterThanOrEqualToConstant: 40).isActive = true
        
        startButton.topAnchor.constraint(equalTo: bottomAnchor, constant: -100).isActive = true
        startButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        startButton.widthAnchor.constraint(equalToConstant: 246).isActive = true
        startButton.heightAnchor.constraint(equalToConstant: 46).isActive = true
        
    }
}

