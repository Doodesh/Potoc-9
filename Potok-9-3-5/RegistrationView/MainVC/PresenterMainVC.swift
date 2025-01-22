//
//  PresenterMainVC.swift
//  Potok-9-3-5
//
//  Created by DOODESH  on 19.01.2025.
//

import Foundation

protocol MainPresenterProtocol: AnyObject {
    func logVC()
}

class PresenterMainVC: MainPresenterProtocol {
    weak var view: MainVCProtocol?
    
    
    
    init (view: MainVCProtocol) {
        self.view = view
    }
    
    func logVC() {
        
        NotificationCenter.default.post(name: .login, object: nil, userInfo: ["VC": WindowCase.login] )
    }
    
}
