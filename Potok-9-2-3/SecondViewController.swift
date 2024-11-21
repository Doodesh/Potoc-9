//
//  SecondViewController.swift
//  Potok-9-2-3
//
//  Created by DOODESH . on 20.11.2024.
//

import UIKit

class SecondViewController: UIViewController {
    
        lazy var logoImageView = {
        $0.image = UIImage(named: "logo")
        $0.contentMode = .scaleAspectFit
        $0.frame = CGRect(x: 20, y: 100, width: 91.64, height:  34.5)
        return $0
    }(UIImageView())

        lazy var productName = {
        $0.text = "Ольхинский Квартал"
        $0.font = .systemFont(ofSize: .init(23.6))
        $0.frame = CGRect(x: 14, y: logoImageView.frame.maxY + 21.5, width: view.frame.width, height: 28)
        $0.textColor = .white
        return $0
    }(UILabel())
    
    lazy var ImageComplexes = {
        $0.layer.cornerRadius = 10
        $0.layer.masksToBounds = true
        $0.image = UIImage(named: "2")
        $0.frame = CGRect(x: 14, y: productName.frame.maxY + 28, width: view.frame.width - 28, height:  240)
        return $0
    }(UIImageView())
    
    lazy var price = {
        $0.text = "от 8 029 445 р"
        $0.font = .systemFont(ofSize: .init(11.65))
        $0.textColor = .white
        $0.frame = CGRect(x: 12, y: ImageComplexes.frame.maxY + 12 , width: 97, height: 12)
        return $0
    }(UILabel())
    
    lazy var address = {
        $0.text = "Москва, поселение Сосенское, деревня Столболово"
        $0.font = .systemFont(ofSize: .init(11.65))
        $0.textColor = .white
        $0.frame = CGRect(x: 12, y: price.frame.maxY + 9 , width: 400, height: 12)
        return $0
    }(UILabel())

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .blue
        view.addSubview(logoImageView)
        view.addSubview(productName)
        view.addSubview(ImageComplexes)
        view.addSubview(price)
        view.addSubview(address)
        
    }
}
