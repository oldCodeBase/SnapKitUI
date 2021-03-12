//
//  HeaderView.swift
//  SnapKitUI
//
//  Created by Ibragim Akaev on 12/03/2021.
//

import UIKit
import SnapKit

class HeaderView: UIView {
    
    
    let titleLabel            = CustomLabel(text: "Create your account", fontSize: 28)
    let facebookButton        = CustomButton(title: "CONTINUE WITH FACEBOOK", bgColor: #colorLiteral(red: 0.4588235294, green: 0.5137254902, blue: 0.7921568627, alpha: 1))
    let googleButton          = CustomButton(title: "CONTINUE WITH GOOGLE", titleColour: .label)
    let orLoginWithEmailLabel = CustomLabel(text: "OR LOG IN WITH EMAIL", colour: #colorLiteral(red: 0.631372549, green: 0.6431372549, blue: 0.6980392157, alpha: 1), fontSize: 14)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(title: String) {
        self.init(frame: .zero)
        self.titleLabel.text = title
        
    }
    
    
    private func configure() {
        addSubviews(titleLabel, facebookButton, googleButton, orLoginWithEmailLabel)
        
        facebookButton.setImage(Images.facebook, for: .normal)
        facebookButton.tintColor = .white
        facebookButton.imageEdgeInsets.right = facebookButton.frame.width + 40
        
        googleButton.setImage(Images.google, for: .normal)
        googleButton.tintColor = .label
        googleButton.imageEdgeInsets.right = googleButton.frame.width + 55
        
        googleButton.layer.borderWidth = 2
        googleButton.layer.borderColor = UIColor.systemGray5.cgColor
        
        
        titleLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview()
        }
        
        facebookButton.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(30)
            make.height.equalTo(60)
            make.width.equalToSuperview()
        }
        
        googleButton.snp.makeConstraints { make in
            make.top.equalTo(facebookButton.snp.bottom).offset(20)
            make.height.equalTo(60)
            make.width.equalToSuperview()
        }
        
        orLoginWithEmailLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(googleButton.snp.bottom).offset(30)
        }
    }
}
