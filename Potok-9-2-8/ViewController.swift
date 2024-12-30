//
//  ViewController.swift
//  Potok-9-2-8
//
//  Created by DOODESH . on 07.12.2024.
//

import UIKit

class ViewController: UIViewController {

    private let collectionData = CardModel.mockModel
    
    lazy var layout: UICollectionViewFlowLayout = {
        $0.scrollDirection = .vertical
        $0.itemSize = .init(width: view.frame.width / 2 - 15, height: 301)
        
        $0.minimumInteritemSpacing = 10
        $0.minimumLineSpacing = 10
        return $0
    }(UICollectionViewFlowLayout())
    
    lazy var collectionView: UICollectionView = {
        $0.backgroundColor = .lightGray
        $0.isPrefetchingEnabled = true
        $0.dataSource = self
        $0.contentInset = .init(top: 10, left: 10, bottom: 10, right: 10)
        $0.register(PhoneCell.self, forCellWithReuseIdentifier: PhoneCell.reuseIdentifier)

        return $0
    }(UICollectionView(frame: view.frame, collectionViewLayout: layout))

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(collectionView)

    }
}
extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        collectionData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhoneCell.reuseIdentifier, for: indexPath) as! PhoneCell
        
        cell.cardItem = collectionData[indexPath.item]
        
        let selectedCard = collectionData[indexPath.item]
        cell.secondVC = { [weak self] in
            let detailsVC = DetailsView()
            detailsVC.cardModel = selectedCard
            self?.navigationController?.pushViewController(detailsVC, animated: true)
        }
        return cell
    }
}
class PhoneCell: UICollectionViewCell {
    static let reuseIdentifier = "PhoneCell"
    
    
    var cardItem: CardModel? {
        willSet {
            guard let newValue else { return }
            imageView.image = UIImage(named: newValue.image)
            priceLabel.text = newValue.price
            nameLabel.text = newValue.name
            inProduct.text = newValue.infProduct
        }
    }
    lazy var inProduct: UILabel = {
        return $0
    }(UILabel())
    
    lazy var imageView: UIImageView = {
        $0.frame.size = CGSize(width: 188, height: 195)
        $0.frame.origin = .zero
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        return $0
    }(UIImageView())

    lazy var hStack: UIStackView = {
        $0.axis = .horizontal
        $0.distribution = .equalSpacing
        $0.frame.origin = CGPoint(x: 15, y: imageView.frame.maxY + 10)
        $0.frame.size = CGSize(width: frame.width - 30, height: 18)
        $0.spacing = 10
        $0.addArrangedSubview(priceLabel)
        $0.addArrangedSubview(bookMark)
        return $0
    }(UIStackView())
    
    lazy var priceLabel = SomeLabel()
    lazy var bookMark: UIImageView = {
        $0.frame.size = CGSize(width: frame.width - 9, height: 14)
        $0.contentMode = .scaleAspectFill
        $0.image = UIImage(named: "bookmark")
        return $0
    }(UIImageView())
    
    lazy var nameLabel: UILabel = {
        $0.frame.origin = CGPoint(x: 15, y: hStack.frame.maxY + 4)
        $0.frame.size = CGSize(width: frame.width - 15, height: 36)
        $0.font = .systemFont(ofSize: 14.72, weight: .light)
        $0.textColor = .black
        $0.numberOfLines = 0
        return $0
    }(UILabel())
    
    lazy var button: UIButton = {
        $0.frame.origin = CGPoint(x: 6, y: nameLabel.frame.maxY + 10)
        $0.layer.cornerRadius = 11.27
        $0.frame.size = CGSize(width: 175, height: 22.54)
        $0.backgroundColor = .green
        $0.setTitle("Купить", for: .normal)
        $0.setTitleColor(.black, for: .normal)
        $0.titleLabel?.font = .systemFont(ofSize: 13, weight: .bold)
        $0.addAction(buttonA,for: .touchUpInside)
        return $0
    }(UIButton())
    var secondVC:  (() -> Void)?
    lazy var buttonA: UIAction = UIAction { _ in
        self.secondVC?()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        clipsToBounds = true
        layer.cornerRadius = 10
        backgroundColor = .white
        contentView.addSubview(imageView)
        contentView.addSubview(hStack)
        contentView.addSubview(nameLabel)
        contentView.addSubview(button)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
class SomeLabel: UILabel {
    init(font: UIFont = .systemFont(ofSize: 14.72, weight: .bold),
         textColor: UIColor = .red) {
        super.init(frame: .zero)
        self.font = font
        self.textColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
