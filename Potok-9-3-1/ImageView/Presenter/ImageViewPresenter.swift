//
//  ImageViewPresenter.swift
//  Potok-9-3-1
//
//  Created by Doodesh on 12.01.2025.
//

import Foundation


protocol ImageViewPresenterProtocol: AnyObject {
    func generateImage()
}
class ImageViewPresenter: ImageViewPresenterProtocol {
    weak var view: ImageViewControllerProtocol?
    private var generatedImages = [GeneratedImage]()
    private let networkManager = GPTManager()
    
    init(view: ImageViewControllerProtocol){
        self.view = view
    }
    func generateImage() {
        networkManager.generateImage(prompt: view?.promptText.text ?? "") { image in
            DispatchQueue.main.async {
                self.view?.imageView.image = image
            }
        }
    }
}
