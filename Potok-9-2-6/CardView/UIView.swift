//
//  UIView.swift
//  Potok-9-2-6
//
//  Created by DOODESH . on 30.11.2024.
//

import UIKit

class CardCellView: UITableViewCell {
    static let identifier: String = "CardCellView"
   
    lazy var cardView: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .lightGray
        $0.layer.cornerRadius = 30
        $0.addSubviews(cardName, cardImage, infoLabel, dateLabel, cardTextLabel, cardButton)
        return $0
    }(UIView())
    
    private lazy var cardName: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.font = .systemFont(ofSize: 20, weight: .black)
        
        return $0
    }(UILabel())
    
    private lazy var cardImage: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.layer.cornerRadius = 30
        $0.clipsToBounds = true
        
        $0.contentMode = .scaleAspectFill
        return $0
    }(UIImageView())
    
     private lazy var infoLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.font = .systemFont(ofSize: 20, weight: .black)
        return $0
    }(UILabel())
    
    private lazy var dateLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.font = .systemFont(ofSize: 12, weight: .light)
        return $0
    }(UILabel())
    
    private lazy var cardTextLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.font = .systemFont(ofSize: 16, weight: .light)
        $0.numberOfLines = 0
        return $0
    }(UILabel())
    
    private lazy var cardButton: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.layer.cornerRadius = 20
        $0.backgroundColor = .green
        $0.setTitle("naxt", for: .normal)
        $0.setTitleColor(.red, for: .normal)
        return $0
    }(UIButton())
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(cardView)
        setupConstraints()
    }
    
    func setupCell(card: Card){
        cardImage.image = UIImage(named: card.image)
        cardName.text = card.nameLabel
        infoLabel.text = card.infoName
        dateLabel.text = card.date
        cardTextLabel.text = card.text
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            
        cardView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
        cardView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
        cardView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
        cardView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
        
        cardName.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 23),
        cardName.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 36),
        cardName.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -36),
        
        cardImage.topAnchor.constraint(equalTo: cardName.bottomAnchor, constant: 21),
        cardImage.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 16),
        cardImage.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -16),
        cardImage.heightAnchor.constraint(equalToConstant: 191),
        
        infoLabel.topAnchor.constraint(equalTo: cardImage.bottomAnchor, constant: 9),
        infoLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 36),
        infoLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -36),

        dateLabel.topAnchor.constraint(equalTo: infoLabel.bottomAnchor, constant: 3),
        dateLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 36),
        dateLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -36),

        cardTextLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 14),
        cardTextLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 20),
        cardTextLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -20),

        cardButton.topAnchor.constraint(equalTo: cardTextLabel.bottomAnchor, constant: 10),
        cardButton.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 20),
        cardButton.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -20),
        cardButton.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: -20),
        cardButton.heightAnchor.constraint(equalToConstant: 50)

        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
