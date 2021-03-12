//
//  CustomTextField.swift
//  SnapKitUI
//
//  Created by Ibragim Akaev on 12/03/2021.
//

import UIKit

class CustomTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    convenience init(placeholder: String) {
        self.init(frame: .zero)
        self.placeholder = placeholder
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius          = 15
        textColor                   = .label
        leftViewMode                = .always
        leftView                    = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 10))
        font                        = UIFont(name: Font.lightHelvetica, size: 16)
        backgroundColor             = .systemGray6
        autocorrectionType          = .no
        clearButtonMode             = .whileEditing
    }
}
