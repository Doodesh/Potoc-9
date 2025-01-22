//
//  RegistrationVC.swift
//  Potok-9-3-5
//
//  Created by DOODESH  on 15.01.2025.
//

import UIKit
protocol RegistrationVCProtocol: AnyObject {
    var nameLabel: UITextField { get set }
    var emailLabel: UITextField { get set }
    var passwordLabel: UITextField { get set }
}
class RegistrationVC: UIViewController, RegistrationVCProtocol {

    var presenterRegistration: PresenterRegistrationVC!

    lazy var registLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Регистрация"
        $0.font = .systemFont(ofSize: 30, weight: .bold)
        $0.textColor = .white
        return $0
    }(UILabel())
    
    lazy var nameLabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .white
        $0.layer.cornerRadius = 20
        $0.layer.masksToBounds = true
        $0.font = .systemFont(ofSize: 15)
        $0.placeholder = "Name"
        $0.textColor = .black
        return $0
    }(UITextField())
    
    lazy var emailLabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .white
        $0.layer.cornerRadius = 20
        $0.layer.masksToBounds = true
        $0.font = .systemFont(ofSize: 15)
        $0.placeholder = "Email"
        $0.textColor = .black
        return $0
    }(UITextField())
    
    lazy var passwordLabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .white
        $0.layer.cornerRadius = 20
        $0.layer.masksToBounds = true
        $0.font = .systemFont(ofSize: 15)
        $0.placeholder = "Password"
        $0.textColor = .black
        return $0
    }(UITextField())
    
    
    
    lazy var registButton: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.layer.masksToBounds = true
        
        $0.setTitle("Регистрация", for: .normal)
        $0.setTitleColor(.black, for: .normal)
        $0.backgroundColor = .white
        $0.layer.cornerRadius = 20
        return $0
    }(UIButton(primaryAction: UIAction(handler: {[weak self] _ in
    guard let self = self else { return }
        presenterRegistration.saveUser()
    })))
    
    lazy var loginButton: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setTitle("eсть ник", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.layer.cornerRadius = 20
        return $0
    }(UIButton(primaryAction:  UIAction { [weak self] _ in
        guard let self = self else { return }
        presenterRegistration.logVC()
    }))

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .black
        view.addSubview(registLabel)
        view.addSubview(nameLabel)
        view.addSubview(emailLabel)
        view.addSubview(passwordLabel)
        view.addSubview(registButton)
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
            
            emailLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20),
            emailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            emailLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            emailLabel.heightAnchor.constraint(equalToConstant: 40),
            
            passwordLabel.topAnchor.constraint(equalTo: emailLabel.bottomAnchor, constant: 20),
            passwordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            passwordLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            passwordLabel.heightAnchor.constraint(equalToConstant: 40),
            
            registButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            registButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            registButton.bottomAnchor.constraint(equalTo: loginButton.topAnchor, constant: -20),
            registButton.heightAnchor.constraint(equalToConstant: 40),
            
            loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            loginButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -150)
            
            
            ])
    }
}



