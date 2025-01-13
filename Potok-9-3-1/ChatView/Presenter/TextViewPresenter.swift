//
//  TextViewPresenter.swift
//  Potok-9-3-1
//
//  Created by Doodesh on 12.01.2025.
//

import Foundation

protocol TextViewPresenterProtocol: AnyObject {
    func generateText()
}
class TextViewPresenter: TextViewPresenterProtocol {
    weak var view: TextViewControllerProtocol?
    private let networkManager = GPTManager()
    private var messages = [Message]()
    
    init(view: TextViewControllerProtocol){
        self.view = view
    }
    func generateText() {
        networkManager.sendTextRequest(prompt: view?.messageText.text ?? "") { choses in
            
            self.view?.contentView.text = choses[0].message.content
            self.messages.append(choses[0].message)
        }
    }
}
