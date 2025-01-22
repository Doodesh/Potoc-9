//
//  Builder.swift
//  Potok-9-3-5
//
//  Created by DOODESH  on 19.01.2025.
//

import UIKit

class Builder {
    

    static func createRegistrationVC() -> UIViewController {
        let vc = RegistrationVC()
        let presenter = PresenterRegistrationVC(view: vc)
        vc.presenterRegistration = presenter
        return vc
    }
    

    static func createLoginVC() -> UIViewController {
        let vc = LoginVC()
        let presenter = PresenterLoginVC(view: vc)
        vc.presenterLogin = presenter
        return vc
    }
    

    static func createMainVC() -> UIViewController {
        let vc = MainVC()
        let presenter = PresenterMainVC(view: vc)
        vc.presenterMain = presenter
        return vc
    }
}


