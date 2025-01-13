//
//  TabBarViewPresenter.swift
//  Potok-9-3-1
//
//  Created by Doodesh on 12.01.2025.
//

import Foundation

protocol TabBarViewPresenterProtocol: AnyObject {
    
}

class TabBarViewPresenter: TabBarViewPresenterProtocol {
    weak var view: (TabBarControllerProtocol)?
    init(view: TabBarControllerProtocol){
        self.view = view
        
    }
    
}
