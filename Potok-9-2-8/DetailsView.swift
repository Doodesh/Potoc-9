//
//  DetailsView.swift
//  Potok-9-2-8
//
//  Created by DOODESH . on 08.12.2024.
//

import UIKit

class DetailsView: UIViewController {
    
    var cardModel: CardModel?
    
        lazy var photoViewContent = {
            $0.translatesAutoresizingMaskIntoConstraints = false
            return $0
        }(UIImageView())
        
        lazy var labelPrice = {
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.font = .systemFont(ofSize: .init(33), weight: .bold)
            $0.textColor = .red
            return $0
        }(UILabel())
        
        lazy var nameProductLabel = {
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.font = .systemFont(ofSize: .init(18))
            $0.textColor = .black
            return $0
        }(UILabel())
        
        lazy var buttonSale = {
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.setTitle("В избранное", for: .normal)
            $0.frame = CGRect(x: 0, y: 0, width: 189, height: 50)
            $0.setTitleColor(.black, for: .normal)
            $0.backgroundColor = .white
            $0.layer.cornerRadius = 13
            return $0
        }(UIButton())
        
        lazy var buttonP = {
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.setTitle("Купить", for: .normal)
            $0.setTitleColor(.black, for: .normal)
            $0.backgroundColor = .green
            $0.layer.cornerRadius = 13
            return $0
        }(UIButton())
        
        lazy var textProduct = {
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.font = .systemFont(ofSize: .init(15))
            $0.textColor = .black
            $0.numberOfLines = 0
            return $0
        }(UILabel())
        
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .lightGray
            
            if let modelData = cardModel {

                photoViewContent.image = UIImage(named: modelData.image)
                labelPrice.text = modelData.price
                nameProductLabel.text = modelData.name
                textProduct.text = modelData.infProduct
            }
            
            
            view.addSubview(photoViewContent)
            view.addSubview(labelPrice)
            view.addSubview(nameProductLabel)
            view.addSubview(buttonSale)
            view.addSubview(buttonP)
            view.addSubview(textProduct)
            
            setConstraints()
        }
        
        private func setConstraints() {
            NSLayoutConstraint.activate([
                
                photoViewContent.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
                photoViewContent.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 0),
                photoViewContent.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
                photoViewContent.heightAnchor.constraint(equalToConstant: 380),
                
                labelPrice.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
                labelPrice.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
                labelPrice.topAnchor.constraint(equalTo: photoViewContent.bottomAnchor, constant: 22),
                
                nameProductLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
                nameProductLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
                nameProductLabel.topAnchor.constraint(equalTo: labelPrice.bottomAnchor, constant: 8),
                
                buttonSale.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
                buttonSale.topAnchor.constraint(equalTo: nameProductLabel.bottomAnchor, constant: 18),
                buttonSale.heightAnchor.constraint(equalToConstant: 42),
                buttonSale.widthAnchor.constraint(equalToConstant: view.self .frame.width / 2 - 25),
                
                buttonP.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
                buttonP.topAnchor.constraint(equalTo: nameProductLabel.bottomAnchor, constant: 18),
                buttonP.heightAnchor.constraint(equalToConstant: 42),
                buttonP.widthAnchor.constraint(equalToConstant: view.self .frame.width / 2 - 25),
                
                textProduct.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
                textProduct.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
                textProduct.topAnchor.constraint(equalTo: buttonP.bottomAnchor, constant: 7),
                
            ])
        }
        
    }
