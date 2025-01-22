//
//  PresentrationRegisterVC.swift
//  Potok-9-3-5
//
//  Created by DOODESH  on 19.01.2025.
//

import Foundation

protocol RegistrationPresenterProtocol: AnyObject {
    func saveUser()
}

class PresenterRegistrationVC: RegistrationPresenterProtocol {
    weak var view: RegistrationVCProtocol?

    init(view: RegistrationVCProtocol){
        self.view = view
    }
    
    func saveUser() {
        
        print(12)
        guard
            let name = self.view?.nameLabel.text, !name.isEmpty,
            let email = self.view?.emailLabel.text, !email.isEmpty,
            let password = self.view?.passwordLabel.text, !password.isEmpty
            
        else { return }
        
        StorageManager.shared.name = name
        StorageManager.shared.email = email
        StorageManager.shared.password = password
        
        
        NotificationCenter.default.post(name: .register, object: nil, userInfo: ["VC": WindowCase.login])
        
    }
    
}
