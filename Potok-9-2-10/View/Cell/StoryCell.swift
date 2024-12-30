//
//  StoryCell.swift
//  Potok-9-2-10
//
//  Created by DOODESH . on 18.12.2024.
//

import UIKit

protocol CellProtocol {
    static var reuseIdentifier: String { get }
    func setupCell(item: CollectionItem)
}

class StoryCell: UICollectionViewCell, CellProtocol {
    static let reuseIdentifier: String = "StoryCell"
    
    
    lazy var imageView: UIImageView = {
        $0.frame.size = CGSize(width: 80, height: 80)
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 40
        return $0
    }(UIImageView())
    
    lazy var nameLabel: UILabel = {
        $0.frame.origin = CGPoint(x: 0, y: imageView.frame.maxY + 5)
        $0.frame.size = CGSize(width: frame.width, height: 20)
        $0.font = UIFont.systemFont(ofSize: 16)
        $0.textColor = .black
        $0.textAlignment = .center
        return $0
    }(UILabel())
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        contentView.addSubview(nameLabel)
        
    }
    
    func setupCell(item: CollectionItem) {
        imageView.image = UIImage(named: item.image)
        nameLabel.text = item.name
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
