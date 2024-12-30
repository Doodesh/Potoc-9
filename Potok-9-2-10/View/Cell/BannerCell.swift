//
//  BannerCell.swift
//  Potok-9-2-10
//
//  Created by DOODESH . on 18.12.2024.
//

import UIKit

class BannerCell: UICollectionViewCell, CellProtocol {
    static let reuseIdentifier: String = "BannerCell"
    
    
    lazy var imageView: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.widthAnchor.constraint(equalToConstant: 370).isActive = true
        $0.heightAnchor.constraint(equalToConstant: 216).isActive = true
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 15
        return $0
    }(UIImageView())

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.clipsToBounds = true
        
        contentView.addSubview(imageView)

        setupConst()
        
    }
    
    func setupConst() {
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 13),
            imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -13),
            imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10)

        ])

    }
    
    func setupCell(item: CollectionItem) {
        imageView.image = UIImage(named: item.image)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

