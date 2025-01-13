//
//  PhotoSearchController.swift
//  Potok-9-3-1
//
//  Created by DOODESH . on 04.01.2025.
//

import UIKit

protocol ImageViewControllerProtocol: AnyObject {
    var promptText: UITextView {get set}
    var imageView: UIImageView {get set}
}

class ImageViewController: UIViewController, ImageViewControllerProtocol {
    
    var presenterImage: ImageViewPresenterProtocol!
    
    lazy var imageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .black
        $0.layer.cornerRadius = 20
        return $0
    }(UIImageView())
        
    lazy var promptText = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = ""
        $0.font = .systemFont(ofSize: 20, weight: .bold)
        $0.textColor = .white
        $0.layer.cornerRadius = 18
        $0.backgroundColor = .gray
        return $0
    }(UITextView())
        
    lazy var inputViewContainer: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .black
        $0.layer.cornerRadius = 18
        $0.addSubview(promptText)
        $0.addSubview(generateButton)
        return $0
    }(UIView())
    
    lazy var generateButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setTitle("Generate", for: .normal)
        $0.setTitleColor(.black, for: .normal)
        $0.backgroundColor = .gray
        $0.layer.cornerRadius = 18
        return $0
    }(UIButton(primaryAction: UIAction(handler: {[weak self] _ in
        guard let self else {return}
        presenterImage.generateImage()
        promptText.text = ""
    })))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        view.addSubview(imageView)
        view.addSubview(inputViewContainer)
        setConstraints()
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            
            imageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 5),
            imageView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -5),
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            imageView.bottomAnchor.constraint(equalTo: inputViewContainer.topAnchor, constant: -5),
        
        promptText.leadingAnchor.constraint(equalTo: inputViewContainer.leadingAnchor, constant: 5),
        promptText.trailingAnchor.constraint(equalTo: generateButton.leadingAnchor, constant: -5),
        promptText.topAnchor.constraint(equalTo: inputViewContainer.topAnchor, constant: 5),
        promptText.bottomAnchor.constraint(equalTo: inputViewContainer.bottomAnchor, constant: -5),
        
        inputViewContainer.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 5),
        inputViewContainer.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -5),
        inputViewContainer.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -3),
        inputViewContainer.heightAnchor.constraint(equalToConstant: 80),
        
        generateButton.trailingAnchor.constraint(equalTo: inputViewContainer.trailingAnchor, constant: -5),
        generateButton.bottomAnchor.constraint(equalTo: inputViewContainer.bottomAnchor, constant: -5),
        generateButton.heightAnchor.constraint(equalToConstant: 70),
        generateButton.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
}
