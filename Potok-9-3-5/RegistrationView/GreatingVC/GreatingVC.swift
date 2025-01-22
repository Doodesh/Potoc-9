//
//  GreatingVC.swift
//  Potok-9-3-5
//
//  Created by DOODESH  on 19.01.2025.
//

import UIKit

protocol GreatingVCProtocol: AnyObject {}

class GreatingVC: UIViewController, GreatingVCProtocol {
    
    
    var presenterGreating: GreatingPresenterProtocol?

    
    
    
    
    let name = StorageManager.shared.name
    let email = StorageManager.shared.email
    let password = StorageManager.shared.password
    
    lazy var registLabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Привет, \(name)"
        $0.font = .systemFont(ofSize: 30, weight: .bold)
        $0.textColor = .white
        return $0
    }(UILabel())
    
    lazy var nameLabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Ваш email: \(email)"
        $0.font = .systemFont(ofSize: 30, weight: .bold)
        $0.textColor = .white
        return $0
    }(UILabel())
    
    lazy var emageLabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Ваш email: \(email)"
        $0.font = .systemFont(ofSize: 30, weight: .bold)
        $0.textColor = .white
        return $0
    }(UILabel())
    

    lazy var loginButton: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setTitle("Выход", for: .normal)
        $0.setTitleColor(.white, for: .normal)
 //       $0.backgroundColor = .systemBlue
        $0.layer.cornerRadius = 20
        return $0
    }(UIButton(primaryAction: exitBT))
    
    lazy var exitBT: UIAction = UIAction { [weak self] _ in
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black
        view.addSubview(registLabel)
        view.addSubview(nameLabel)
        view.addSubview(emageLabel)

        view.addSubview(loginButton)
        
        
        setupConstraints()
        
        
    }

    func setupConstraints() {
        NSLayoutConstraint.activate ([
            registLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 150),
            registLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            registLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            nameLabel.topAnchor.constraint(equalTo: registLabel.bottomAnchor, constant: 100),
            nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            nameLabel.heightAnchor.constraint(equalToConstant: 40),
            
            emageLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20),
            emageLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            emageLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            emageLabel.heightAnchor.constraint(equalToConstant: 40),
            

            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            loginButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150)
            
            
            ])
    }
    
    
    

}


