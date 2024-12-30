//
//  ViewController.swift
//  Potok-9-2-7
//
//  Created by DOODESH . on 04.12.2024.
//

import UIKit

class ViewController: UIViewController {
    
    let tableData = Card.allCards
    
    lazy var tableView: UITableView = {
        $0.dataSource = self
        $0.register(CardCellView.self, forCellReuseIdentifier: CardCellView.identifier)
        $0.separatorStyle = .none
        
        return $0
    }(UITableView(frame: view.frame, style: .plain))

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(tableView)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CardCellView.identifier, for: indexPath) as? CardCellView
        else { return UITableViewCell() }
        let cart = tableData[indexPath.row]
        cell.setupCell(card: cart)
        cell.selectionStyle = .none
        
        let сard = tableData[indexPath.item]
        cell.sVC = { [weak self] in
            let dsVC = ViewCont()
            dsVC.scrolM = сard
            self?.navigationController?.pushViewController(dsVC, animated: true)
        }
        return cell
    }
}

class CardCellView: UITableViewCell {
    static let identifier: String = "CardCellView"
    
    lazy var cardView: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .lightGray
        $0.layer.cornerRadius = 30
        $0.addSubviews(imageViewCard, cardButton, nameCard, shortImageText, hStack)
        return $0
    }(UIView())
    
    
    lazy var dateLabel: UILabel = {
        return $0
    }(UILabel())
    lazy var textInfoLabel: UILabel = {
        return $0
    }(UILabel())
    
    
    lazy var imageViewCard: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.layer.cornerRadius = 30
        $0.clipsToBounds = true
        $0.contentMode = .scaleAspectFill
        return $0
    }(UIImageView())
    
    lazy var nameCard: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.textColor = .white
        $0.font = .systemFont(ofSize: 20)
        return $0
    }(UILabel())
    
    lazy var shortImageText: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.textColor = .white
        $0.numberOfLines = 0
        $0.font = .systemFont(ofSize: 14)
        return $0
    }(UILabel())
    
    lazy var hStack: UIStackView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.axis = .horizontal
        $0.spacing = 10
        $0.alignment = .center
        $0.distribution = .fillEqually
        $0.addSubviews(imageStack1, imageStack2, imageStack3)
        return $0
    }(UIStackView())
    
    lazy var imageStack1: UIImageView = {
        $0.frame = CGRect(x: 0, y: 0, width: 99, height: 99)
        $0.layer.cornerRadius = 20
        $0.clipsToBounds = true
        $0.contentMode = .scaleAspectFill
        return $0
    }(UIImageView())
    
    lazy var imageStack2: UIImageView = {
        $0.frame = CGRect(x: frame.width / 2 - 49.5, y: 0, width: 99, height: 99)
        $0.layer.cornerRadius = 20
        $0.clipsToBounds = true
        $0.contentMode = .scaleAspectFill
        return $0
    }(UIImageView())
    
    lazy var imageStack3: UIImageView = {
        $0.frame = CGRect(x: frame.maxX - 98, y: 0, width: 99, height: 99)
        $0.layer.cornerRadius = 20
        $0.clipsToBounds = true
        $0.contentMode = .scaleAspectFill
        return $0
    }(UIImageView())

    private lazy var cardButton: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.layer.cornerRadius = 20
        $0.backgroundColor = .black
        $0.setTitle("naxt", for: .normal)
        $0.setTitleColor(.white, for: .normal)
        $0.addAction(button,for: .touchUpInside)
        return $0
    }(UIButton())
    var sVC:  (() -> Void)?
    lazy var button: UIAction = UIAction { _ in
        self.sVC?()
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(cardView)
        setupConsraints()
    }
    func setupCell(card: Card) {
        imageViewCard.image = UIImage(named: card.image)
        nameCard.text = card.name
        shortImageText.text = card.text1
        imageStack1.image = UIImage(named: card.stack1)
        imageStack2.image = UIImage(named: card.stack2)
        imageStack3.image = UIImage(named: card.stack3)
        dateLabel.text = card.date
        textInfoLabel.text = card.text2
    }
    
    private func setupConsraints() {
        NSLayoutConstraint.activate(
            [
                cardView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
                cardView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
                cardView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
                cardView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
                
                imageViewCard.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 10),
                imageViewCard.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 20),
                imageViewCard.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -20),
                imageViewCard.heightAnchor.constraint(equalToConstant: 191),
                
                nameCard.bottomAnchor.constraint(equalTo: shortImageText.topAnchor, constant: -10),
                nameCard.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 40),
                nameCard.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -10),
                
                
                shortImageText.bottomAnchor.constraint(equalTo: imageViewCard.bottomAnchor, constant: -10),
                shortImageText.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 40),
                shortImageText.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -10),
                
                hStack.topAnchor.constraint(equalTo: imageViewCard.bottomAnchor, constant: 10),
                hStack.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 20),
                hStack.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -20),
                hStack.heightAnchor.constraint(equalToConstant: 100),

                cardButton.topAnchor.constraint(equalTo: hStack.bottomAnchor, constant: 10),
                cardButton.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 20),
                cardButton.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -20),
                cardButton.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: -10),
                cardButton.heightAnchor.constraint(equalToConstant: 49)
            ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class CustomIV: UIImageView {
    override init(image: UIImage?){
        super.init(image: image)
        translatesAutoresizingMaskIntoConstraints = false
        clipsToBounds = true
        layer.cornerRadius = 20
        contentMode = .scaleAspectFill
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
