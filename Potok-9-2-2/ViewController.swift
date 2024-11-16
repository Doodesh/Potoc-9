//
//  ViewController.swift
//  Potok-9-2-2
//
//  Created by DOODESH . on 15.11.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var imageContent: UIImage? = UIImage()
    var imageView = UIImageView()
    var imageContent2: UIImage? = UIImage()
    var imageView2 = UIImageView()
    
    var nameLabel = UILabel()
    
    var editButton = UIButton()
    
    var textLabel = UILabel()
    var text = UITextView()
    
    var editPasswordLabel = UILabel()
    
    var oldPasswordTextField = UITextField()
    var newPasswordTextField = UITextField()
    
    var saveButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        imageContent = .image1
        imageView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 156)
        imageView.image = imageContent
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        view.addSubview(imageView)
        
        imageContent2 = .image2
        imageView2.frame = CGRect(x: 30, y: imageView.frame.maxY + 33, width: 100, height: 100)
        imageView2.layer.cornerRadius = 50
        imageView2.image = imageContent2
        imageView2.contentMode = .scaleAspectFill
        imageView2.clipsToBounds = true
        view.addSubview(imageView2)
        
        nameLabel.text = "Имя Фамилия"
        nameLabel.textColor = .black
        nameLabel.font = .systemFont(ofSize: 16, weight: .semibold)
        nameLabel.frame = CGRect(x: imageView2.frame.maxX + 14, y: imageView.frame.maxY + 52, width: 113, height: 19)
        view.addSubview(nameLabel)
        
        editButton = createButton(title: "Редактировать")
        editButton.frame = CGRect(x: imageView2.frame.maxX + 14, y: nameLabel.frame.maxY + 9, width: 147, height: 34)
        view.addSubview(editButton)
        
        textLabel = createLabel(text: "Добавить описание")
        textLabel.frame = CGRect(x: 30, y: imageView2.frame.maxY + 52, width: 156, height: 19)
        view.addSubview(textLabel)
        
        text.frame = CGRect(x: 30, y: textLabel.frame.maxY + 9, width: view.frame.width - 60, height: 150)
        text.backgroundColor = .lightGray
        text.layer.cornerRadius = 20
        text.textColor = .black
        view.addSubview(text)
        
        editPasswordLabel = createLabel(text: "Изменить пароль")
        editPasswordLabel.frame = CGRect(x: 30, y: text.frame.maxY + 33, width: 139, height: 19)
        view.addSubview(editPasswordLabel)
        
        
        oldPasswordTextField = createTextField(placeholder: "Старый пароль", offset: editPasswordLabel.frame.maxY + 9, backgroundColor: .lightGray, password: true)
        view.addSubview(oldPasswordTextField)
        
        newPasswordTextField = createTextField(placeholder: "Новый пароль", offset: oldPasswordTextField.frame.maxY + 14, backgroundColor: .lightGray, password: true)
        view.addSubview(newPasswordTextField)
        
        saveButton = createButton(title: "Сохранить")
        saveButton.frame = CGRect(x: 30, y: newPasswordTextField.frame.maxY + 127, width: view.frame.width - 60, height: 55)
        view.addSubview(saveButton)
        
        

    }
    
    private func createTextField(placeholder: String, offset: CGFloat, backgroundColor: UIColor, password: Bool) -> UITextField {
        let textField = UITextField()
        textField.placeholder = placeholder
        textField.backgroundColor = backgroundColor
        textField.leftViewMode = .always
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 0))
        textField.frame = CGRect(x: 30, y: offset, width: view.frame.width - 60, height: 52)
        textField.layer.cornerRadius = 10
        textField.isSecureTextEntry = password
        textField.isUserInteractionEnabled = false
        textField.textColor = .black
        return textField
    }
    private func createButton(title: String) -> UIButton {
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.backgroundColor = .blue
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .semibold)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 10
        return button
    }
     private func createLabel(text: String) -> UILabel {
        let label = UILabel()
        label.text = text
        label.textColor = .black
        label.font = .systemFont(ofSize: 16, weight: .semibold)
        return label
    }
}

