//
//  CustomLabel.swift
//  SnapKitUI
//
//  Created by Ibragim Akaev on 11/03/2021.
//

import UIKit

class CustomLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    convenience init(text: String = "", colour: UIColor = .label, font: String = Font.boldHelvetica, fontSize: CGFloat = 16) {
        self.init(frame: .zero)
        self.text           = text
        self.textColor      = colour
        self.font           = UIFont(name: font, size: fontSize)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        adjustsFontSizeToFitWidth                   = true
        minimumScaleFactor                          = 0.9
        textAlignment                               = .center
        lineBreakMode                               = .byTruncatingTail
        numberOfLines                               = 2
    }
}
