//
//  Builder.swift
//  Potok-9-3-1
//
//  Created by Doodesh on 12.01.2025.
//


import UIKit

class Builder {
    static func createTabView() -> UIViewController {
        let vc = TabBarController()
        let presenter = TabBarViewPresenter(view: vc)
        vc.presenter = presenter
        return vc
    }

    static func createChatView() -> UIViewController {
        let vc = TextViewController()
        let presenterText = TextViewPresenter(view: vc)
        vc.presenterText = presenterText
        return vc
    }
    
    static func createImageView() -> UIViewController {
        let vc = ImageViewController()
        let presenterImage = ImageViewPresenter(view: vc)
        vc.presenterImage = presenterImage
        return vc
    }
}
