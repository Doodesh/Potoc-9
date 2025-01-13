//
//  ViewController.swift
//  Potok-9-3-1
//
//  Created by DOODESH . on 04.01.2025.
//

import UIKit

protocol TextViewControllerProtocol: AnyObject {
    var messageText: UITextView {get set}
    var contentView: UITextView {get set}
}

class TextViewController: UIViewController, TextViewControllerProtocol {

    var presenterText: TextViewPresenterProtocol!
 
    lazy var contentView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .black
        $0.layer.cornerRadius = 20
        $0.textColor = .white
        $0.font = .systemFont(ofSize: 20, weight: .bold)
        return $0
    }(UITextView())
        
    lazy var messageText = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = ""
        $0.font = .systemFont(ofSize: 20, weight: .bold)
        $0.textColor = .white
        $0.layer.cornerRadius = 18
        $0.backgroundColor = .gray
        return $0
    }(UITextView())
        
    lazy var mesageView: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .black
        $0.layer.cornerRadius = 18
        $0.addSubview(messageText)
        $0.addSubview(button)
        return $0
    }(UIView())
    
    lazy var button = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setTitle("->", for: .normal)
        $0.setTitleColor(.black, for: .normal)
        $0.backgroundColor = .gray
        $0.layer.cornerRadius = 18
        return $0
    }(UIButton(primaryAction: UIAction(handler: {[weak self] _ in
        guard let self else {return}
        presenterText.generateText()
        messageText.text = ""
    })))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        view.addSubview(contentView)
        view.addSubview(mesageView)
        setConstraints()
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            
        contentView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 5),
        contentView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -5),
        contentView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
        contentView.bottomAnchor.constraint(equalTo: mesageView.topAnchor, constant: -5),
        
        messageText.leadingAnchor.constraint(equalTo: mesageView.leadingAnchor, constant: 5),
        messageText.trailingAnchor.constraint(equalTo: button.leadingAnchor, constant: -5),
        messageText.topAnchor.constraint(equalTo: mesageView.topAnchor, constant: 5),
        messageText.bottomAnchor.constraint(equalTo: mesageView.bottomAnchor, constant: -5),
        
        mesageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 5),
        mesageView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -5),
        mesageView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -3),
        mesageView.heightAnchor.constraint(equalToConstant: 80),
        
        button.trailingAnchor.constraint(equalTo: mesageView.trailingAnchor, constant: -5),
        button.bottomAnchor.constraint(equalTo: mesageView.bottomAnchor, constant: -5),
        button.heightAnchor.constraint(equalToConstant: 70),
        button.widthAnchor.constraint(equalToConstant: 40)
        ])
    }
}
    
