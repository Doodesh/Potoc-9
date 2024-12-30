//
//  Ext.swift
//  Potok-9-2-7
//
//  Created by DOODESH . on 05.12.2024.
//

import UIKit


extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach { addSubview($0) }
    }
}
