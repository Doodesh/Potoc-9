//
//  PresenterLoginVC.swift
//  Potok-9-3-5
//
//  Created by DOODESH  on 19.01.2025.
//

import Foundation

protocol LoginPresenterProtocol: AnyObject {
//    func saveUser()
}

class PresenterLoginVC: LoginPresenterProtocol {
    weak var view: LoginVCProtocol?
    
    
    
    init (view: LoginVCProtocol) {
        self.view = view
    }
    
//    func saveUser() {
        
//        guard
//            let name = view?.nameLabel.text, !name.isEmpty,
//            let email = self.view?.emailLabel.text, !email.isEmpty,
//            let password = self.view?.passwordLabel.text, !password.isEmpty
//        else { return }
        
//        StorageManager.shared.name = name
//        StorageManager.shared.email = email
//        StorageManager.shared.password = password
        
        
//        NotificationCenter.default.post(name: .register, object: nil, userInfo: ["tap": WinCase.greting])
        
//    }
    
}

