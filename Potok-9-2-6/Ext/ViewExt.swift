//
//  ViewExt.swift
//  Potok-9-2-6
//
//  Created by DOODESH . on 30.11.2024.
//

import UIKit


extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach { addSubview($0) }
    }
}
