//
//  ViewClass.swift
//  Potok-9-2-9
//
//  Created by DOODESH . on 12.12.2024.
//

import UIKit


class CardCell: UICollectionViewCell, CellProtocol {
    static let identifier: String = "CardCell"
    
    var item: Card? {
        willSet {
            guard let newValue else { return }
            photoUser.image = UIImage(named: newValue.userPhoto)
            nameUser.text = newValue.userName
            contentImage.image = UIImage(named: newValue.imageCntent)
            date.text = newValue.date
            textName.text = newValue.textName
            textContent.text = newValue.textContent
        }
    }

    lazy var photoUser: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.clipsToBounds = true
        $0.layer.masksToBounds = true
        $0.contentMode = .scaleAspectFill
        return $0
    }(UIImageView())
    
    lazy var nameUser: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 20, weight: .black)
        return $0
    }(UILabel())
    
    lazy var contentImage: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.clipsToBounds = true
        $0.layer.masksToBounds = true
        $0.contentMode = .scaleAspectFill
        return $0
    }(UIImageView())
    
    lazy var date: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.textColor = .gray
        $0.font = .systemFont(ofSize: 14, weight: .bold)
        return $0
    }(UILabel())
    
    lazy var textName: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 22, weight: .black)
        $0.numberOfLines = 0
        return $0
    }(UILabel())
    
    lazy var textContent: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 16, weight: .light)
        $0.numberOfLines = 0
        return $0
    }(UILabel())

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .lightGray
        contentView.addSubview(photoUser)
        contentView.addSubview(nameUser)
        contentView.addSubview(contentImage)
        contentView.addSubview(date)
        contentView.addSubview(textName)
        contentView.addSubview(textContent)
        setConstreints()
    }
    func setConstreints() {
        NSLayoutConstraint.activate([
            photoUser.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            photoUser.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            photoUser.widthAnchor.constraint(equalToConstant: 44),
            photoUser.heightAnchor.constraint(equalToConstant: 44),
            
            nameUser.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 30),
            nameUser.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 84),
            nameUser.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            
            contentImage.topAnchor.constraint(equalTo: photoUser.bottomAnchor, constant: 20),
            contentImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            contentImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            contentImage.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 100),
            
            date.topAnchor.constraint(equalTo: contentImage.bottomAnchor, constant: 9),
            date.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            date.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            
            
            textName.topAnchor.constraint(equalTo: date.bottomAnchor, constant: 4),
            textName.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            textName.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            
            textContent.topAnchor.constraint(equalTo: textName.bottomAnchor, constant: 10),
            textContent.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            textContent.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            textContent.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20)
            ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
