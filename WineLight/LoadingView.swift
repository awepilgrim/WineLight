//
//  LoadingView.swift
//  WineLight
//
//  Created by Олег Семёнов on 07.10.2022.
//

import UIKit

class LoadingView: UIView {
    
    let glassImageView = UIImageView()
    let loadingLabel = UILabel()
   

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        
        glassImageView.image = UIImage(named: "glass")
        glassImageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(glassImageView)
        
        loadingLabel.font = UIFont(name: "HelveticaNeue-Light", size: 16)
        loadingLabel.text = "Loading"
        loadingLabel.numberOfLines = 0
        loadingLabel.textColor = UIColor(red: 0.898, green: 0.561, blue: 0.396, alpha: 1)
        loadingLabel.textAlignment = .center
        loadingLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(loadingLabel)
        
        makeConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func makeConstraints() {
        
        glassImageView.topAnchor.constraint(equalTo: topAnchor, constant: 229).isActive = true
        glassImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
//        glassImageView.heightAnchor.constraint(equalToConstant: 232).isActive = true
//        glassImageView.widthAnchor.constraint(equalToConstant: 232).isActive = true
        
        loadingLabel.topAnchor.constraint(equalTo: glassImageView.bottomAnchor, constant: 17).isActive = true
        loadingLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        loadingLabel.widthAnchor.constraint(greaterThanOrEqualToConstant: 200).isActive = true
        loadingLabel.heightAnchor.constraint(greaterThanOrEqualToConstant: 40).isActive = true
    }
}

