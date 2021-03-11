//
//  UIView+Ext.swift
//  SnapKitUI
//
//  Created by Ibragim Akaev on 11/03/2021.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
}
