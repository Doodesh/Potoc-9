//
//  PresenterLoginVC.swift
//  Potok-9-3-5
//
//  Created by DOODESH  on 19.01.2025.
//

import Foundation

protocol LoginPresenterProtocol: AnyObject {
    func loginUser()
    func regVC()
}

class PresenterLoginVC: LoginPresenterProtocol {
    weak var view: LoginVCProtocol?
    init (view: LoginVCProtocol) {
        self.view = view
    }
    
    func loginUser() {
        guard
            let email = self.view?.emailLabel.text, !email.isEmpty,
            let password = self.view?.passwordLabel.text, !password.isEmpty
        else { return }
       if StorageManager.shared.email == email && StorageManager.shared.password == password {
           NotificationCenter.default.post(name: .login, object: nil, userInfo: ["VC": WindowCase.main])}
    }
    func regVC() {
        NotificationCenter.default.post(name: .login, object: nil, userInfo: ["VC": WindowCase.register] )
    }
}

