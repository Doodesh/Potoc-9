//
//  ViewController.swift
//  Potok-9-2-4
//
//  Created by DOODESH . on 23.11.2024.
//

import UIKit

class ViewController: UIViewController {

    lazy var photoView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = UIImage(named: "1")
        $0.contentMode = .scaleAspectFill
        $0.layer.cornerRadius = 63 / 2
        $0.layer.masksToBounds = true
        return $0
    }(UIImageView())
    
    lazy var nameLabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Кот Котов"
        $0.font = .systemFont(ofSize: .init(16))
        $0.textColor = .black
        return $0
    }(UILabel())
    
    lazy var contentView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .lightGray
        $0.layer.cornerRadius = 30
        $0.layer.masksToBounds = true
        
        $0.addSubview(photoViewContent)

        $0.addSubview(nameProductLabel)
        $0.addSubview(text)
        $0.addSubview(button)
        return $0
    }(UIView())
    
    lazy var photoViewContent = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = UIImage(named: "2")
        $0.contentMode = .scaleAspectFill
        $0.layer.cornerRadius = 30
        $0.layer.masksToBounds = true
        $0.addSubview(photoNameLabel)
        return $0
    }(UIImageView())
    
    lazy var photoNameLabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Удивление"
        $0.font = .systemFont(ofSize: .init(20))
        $0.textColor = .white
        return $0
    }(UILabel())
    
    lazy var nameProductLabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Удивление это:"
        $0.font = .systemFont(ofSize: .init(20))
        $0.textColor = .black
        return $0
    }(UILabel())
    
    lazy var text = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.text = "Когнитивная эмоция, возникающая при неожиданной ситуации. Ответная реакция на отклонение от нормы."
        $0.font = .systemFont(ofSize: .init(16))
        $0.textColor = .black
        $0.backgroundColor = .lightGray
        return $0
    }(UITextView())
    
    lazy var button = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setTitle("Следующий", for: .normal)
        $0.setTitleColor(.black, for: .normal)
        $0.backgroundColor = .green
        $0.layer.cornerRadius = 20
        return $0
    }(UIButton())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(photoView)
        view.addSubview(nameLabel)
        view.addSubview(contentView)
        
        setConstraints()
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
        photoView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
        photoView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 44),
        photoView.heightAnchor.constraint(equalToConstant: 63),
        photoView.widthAnchor.constraint(equalToConstant: 63),
        
        nameLabel.leadingAnchor.constraint(equalTo: photoView.trailingAnchor, constant: 14),
        nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 66),
        nameLabel.heightAnchor.constraint(equalToConstant: 19),
        
        contentView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 12),
        contentView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -12),
        contentView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 54),
        contentView.heightAnchor.constraint(equalToConstant: 489),
        
        photoViewContent.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
        photoViewContent.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
        photoViewContent.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
        photoViewContent.heightAnchor.constraint(equalToConstant: 239),
        
        photoNameLabel.leadingAnchor.constraint(equalTo: photoViewContent.leadingAnchor, constant: 15),
        photoNameLabel.topAnchor.constraint(equalTo: photoViewContent.topAnchor, constant: 200),
        photoNameLabel.heightAnchor.constraint(equalToConstant: 19),
        
        nameProductLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 48),
        nameProductLabel.topAnchor.constraint(equalTo: photoNameLabel.bottomAnchor, constant: 40),
        nameProductLabel.heightAnchor.constraint(equalToConstant: 24),
        
        text.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
        text.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
        text.topAnchor.constraint(equalTo: nameProductLabel.bottomAnchor, constant: 7),
        text.heightAnchor.constraint(equalToConstant: 70),
        
        button.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
        button.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
        button.topAnchor.constraint(equalTo: text.bottomAnchor, constant: 20),
        button.heightAnchor.constraint(equalToConstant: 50)

        ])
    }


}

