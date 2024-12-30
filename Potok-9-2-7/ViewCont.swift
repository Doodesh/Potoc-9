//
//  ScrollView.swift
//  Potok-9-2-7
//
//  Created by DOODESH . on 04.12.2024.
//

import UIKit

class ViewCont: UIViewController {
    
    var scrolM: Card?
    
    lazy var scrollView: UIScrollView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIScrollView())
    
    lazy var contentView: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIView())
    
    lazy var imageView: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.contentMode = .scaleAspectFill
        $0.clipsToBounds = true
        $0.layer.cornerRadius = 10
        return $0
    }(UIImageView())
    
    lazy var label: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 20, weight: .bold)
        $0.numberOfLines = 0
        return $0
    }(UILabel())
    
    lazy var dateLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.textColor = .gray
        $0.font = .systemFont(ofSize: 20)
        $0.numberOfLines = 0
        return $0
    }(UILabel())
    
    lazy var textLabel: UILabel = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.textColor = .black
        $0.font = .systemFont(ofSize: 14)
        $0.numberOfLines = 0
        return $0
    }(UILabel())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(imageView)
        contentView.addSubview(label)
        contentView.addSubview(dateLabel)
        contentView.addSubview(textLabel)
        
        if let modelData = scrolM {
            imageView.image = UIImage(named: modelData.image)
            label.text = modelData.name
            dateLabel.text = modelData.date
            textLabel.text = modelData.text2
        }
        
        setConstraints()
    }
        private func setConstraints() {
            NSLayoutConstraint.activate([
                scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

                contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
                contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
                contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
                contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
                contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),

                imageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
                imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30),
                imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30),
                imageView.heightAnchor.constraint(equalToConstant: 171),

                label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 10),
                label.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30),

                dateLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 10),
                dateLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30),

                textLabel.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 10),
                textLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 30),
                textLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30),
                textLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10)
            ])
        
        
    }
    
}
