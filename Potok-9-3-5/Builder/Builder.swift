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
    

    static func createGreatingVC() -> UIViewController {
        let vc = GreatingVC()
        let presenter = PresenterGreatingVC(view: vc)
        vc.presenterGreating = presenter
        return vc
    }
}


