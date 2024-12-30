//
//  ViewController.swift
//  Potok-9-2-9
//
//  Created by DOODESH . on 11.12.2024.
//

import UIKit

class ViewController: UIViewController {
    
    let cards: [Card] = Card.mocData
    
    lazy var collectionView: UICollectionView = {
        let layout = $0.collectionViewLayout as! UICollectionViewFlowLayout
        layout.scrollDirection = .vertical
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 30
        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        $0.delegate = self
        $0.dataSource = self
        $0.register(CardCell.self, forCellWithReuseIdentifier: CardCell.identifier)
        $0.contentInset = UIEdgeInsets(top: 10, left: 30, bottom: 10, right: 30)
        return $0
    }(UICollectionView(frame: view.frame, collectionViewLayout: UICollectionViewFlowLayout()))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(collectionView)
    }
}

    extension ViewController: UICollectionViewDataSource {
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            cards.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CardCell.identifier, for: indexPath) as! CardCell
        cell.item = cards[indexPath.item]
        return cell
    }
}

extension ViewController: UICollectionViewDelegate {
    }

protocol CellProtocol: AnyObject {
    static var identifier: String { get }
    func setConstreints()
}


