//
//  CustomButton.swift
//  SnapKitUI
//
//  Created by Ibragim Akaev on 11/03/2021.
//

import UIKit

class CustomButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    convenience init(title: String, titleColour: UIColor = #colorLiteral(red: 0.9647058824, green: 0.9450980392, blue: 0.9843137255, alpha: 1), bgColor: UIColor = .clear) {
        self.init(type: .system)
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColour, for: .normal)
        self.backgroundColor = bgColor
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        clipsToBounds      = true
        layer.cornerRadius = 30
        titleLabel?.font   = UIFont(name: Font.mediumHelvetica, size: 14)
    }
}
