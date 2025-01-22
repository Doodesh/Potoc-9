//
//  SceneDelegate.swift
//  Potok-9-3-5
//
//  Created by DOODESH  on 15.01.2025.
//

import UIKit

enum WindowCase {
    case register, login, greating
}

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    

    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        
        
        guard let scene = (scene as? UIWindowScene) else { return }
        self.window = UIWindow(windowScene: scene)
        
        
        
        self.window?.rootViewController = Builder.createLoginVC()
        self.window?.makeKeyAndVisible()
        
        NotificationCenter.default.addObserver(self, selector: #selector(windowManager), name: .register, object: nil)
        
    }
        
        @objc func windowManager(nt: Notification) {
            guard let userInfo = nt.userInfo else { return }
            if let window = userInfo["VC"] as? WindowCase {
                switch window {
                case .register:
                    let vc = Builder.createRegistrationVC()
                    self.window?.rootViewController = vc
                    print(1)
                case .login:
                    let vc = Builder.createLoginVC()
                    self.window?.rootViewController = vc
                    print(2)
                case .greating:
                    let vc = Builder.createGreatingVC()
                    self.window?.rootViewController = vc
                    print(3)
                }
            }
        }
        
    
}
extension Notification.Name {
    static let register = Notification.Name("register")
    static let login = Notification.Name("login")
    static let exit = Notification.Name("exit")
}
