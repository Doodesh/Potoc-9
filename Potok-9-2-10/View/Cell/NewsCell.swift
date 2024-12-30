//
//  NewsCell.swift
//  Potok-9-2-10
//
//  Created by DOODESH . on 18.12.2024.
//

import UIKit


class NewsCell: UICollectionViewCell, CellProtocol {
    static let reuseIdentifier: String = "NewsCell"
    
    
    lazy var imageView: UIImageView = {
        $0.frame.size = CGSize(width: 305, height: 152)
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 15
        return $0
    }(UIImageView())
    
    lazy var nameLabel: UILabel = {
        $0.frame.origin = CGPoint(x: 24, y: 25)
        $0.frame.size = CGSize(width: frame.width, height: 26)
        $0.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        $0.textColor = .red
        return $0
    }(UILabel())
    
    lazy var mesageLabel: UILabel = {
        $0.frame.origin = CGPoint(x: 24, y: 95)
        $0.frame.size = CGSize(width: frame.width, height: 35)
        $0.numberOfLines = 0
        $0.font = UIFont.systemFont(ofSize: 14)
        $0.textColor = .green
        return $0
    }(UILabel())
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(imageView)
        contentView.addSubview(nameLabel)
        contentView.addSubview(mesageLabel)
        
    }
    
    func setupCell(item: CollectionItem) {
        imageView.image = UIImage(named: item.image)
        nameLabel.text = item.name
        mesageLabel.text = item.text
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
