//
//  TabBarController.swift
//  Potok-9-3-1
//
//  Created by DOODESH . on 04.01.2025.
//

import UIKit

protocol TabBarControllerProtocol: AnyObject {
    
}

class TabBarController: UITabBarController, TabBarControllerProtocol {
    
    var presenter: TabBarViewPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBars()
    }
    
    private func setTabBars() {
        
        tabBar.tintColor = .black
        tabBar.unselectedItemTintColor = .white
        
        let viewChatVC = Builder.createChatView()
        viewChatVC.title = "Chat Search"
        viewChatVC.tabBarItem.image = UIImage(systemName: "square.and.pencil")

        let photoSearchVC = ImageViewController()
        photoSearchVC.title = "Photo Search"
        photoSearchVC.tabBarItem.image = UIImage(systemName: "photo")

        setViewControllers([viewChatVC, photoSearchVC], animated: false)
        
    }
    
}
