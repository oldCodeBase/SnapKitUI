//
//  CustomImageView.swift
//  SnapKitUI
//
//  Created by Ibragim Akaev on 11/03/2021.
//

import UIKit

class CustomImageView: UIImageView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    convenience init(imageName: String) {
        self.init(frame: .zero)
        self.image = UIImage(named: imageName)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        contentMode   = .scaleAspectFit
        clipsToBounds = true
    }
}
