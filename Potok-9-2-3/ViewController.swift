//
//  ViewController.swift
//  Potok-9-2-3
//
//  Created by DOODESH . on 20.11.2024.
//

import UIKit

class ViewController: UIViewController {

    
    lazy var topView = {
        
        $0.backgroundColor = .blue
        $0.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 400)
        $0.addSubview(logoImageView)
        $0.addSubview(productName)
        
        $0.addSubview(saleView)
        return $0
        
    }(UIView())
        
        lazy var logoImageView = {
        $0.image = UIImage(named: "logo")
        $0.contentMode = .scaleAspectFit
            $0.frame = CGRect(x: 20, y: 100, width: 91.64, height:  34.5)
        return $0
        }(UIImageView())
   
    lazy var productName = {
        $0.text = "Сервис квартирных решений\nот сделки до отделки"
        $0.font = .systemFont(ofSize: .init(23.6))
        $0.numberOfLines = 0
        $0.frame = CGRect(x: 20, y: logoImageView.frame.maxY + 21.5, width: view.frame.width, height: 57)
        $0.textColor = .white
        
        return $0
    }(UILabel())
    
    lazy var saleView = {
        $0.backgroundColor = .white
        $0.layer.cornerRadius = 10
        $0.frame = CGRect(x: 14, y: productName.frame.maxY + 22, width: view.frame.width - 28, height: 135)
        $0.addSubview(saleLabel)
        $0.addSubview(saleLabelInfo)
        $0.addSubview(bottomView)
        return $0
    }(UIView())
    
    lazy var saleLabel = {
        $0.text = "Купить"
        $0.font = .systemFont(ofSize: .init(15.46))
        $0.textColor = .black
        $0.frame = CGRect(x: 12, y: 14, width: 100, height: 19)
        return $0
    }(UILabel())
    
    lazy var saleLabelInfo = {
        $0.text = "Пдберем подходящий\nобъект"
        $0.numberOfLines = 0
        $0.font = .systemFont(ofSize: .init(14))
        $0.textColor = .black
        $0.frame = CGRect(x: 12, y: saleLabel.frame.maxY + 4, width: view.frame.width, height: 34)
        return $0
    }(UILabel())

    lazy var bottomView = {

        $0.setImage(UIImage(named: "v"), for: .normal)
        $0.frame = CGRect(x: view.frame.width - 50, y: 19, width: 5, height: 10)
        return $0
    }(UIButton(primaryAction: UIAction(handler: { [weak self]_ in
        guard let self = self else { return }
        let VC = SecondViewController()
        self.navigationController?.pushViewController(VC, animated: true)
    })))

    lazy var serviceLabel = {
        $0.text = "Услуги"
        $0.font = .systemFont(ofSize: .init(19.81))
        $0.frame = CGRect(x: 17, y: topView.frame.maxY + 35, width: 77, height: 20)
        $0.textColor = .black
        return $0
    }(UILabel())
    
    lazy var serviceView = {
        $0.backgroundColor = .lightGray
        $0.layer.cornerRadius = 10
        $0.frame = CGRect(x: 17, y: serviceLabel.frame.maxY + 22, width: view.frame.width - 34, height: 95)
        $0.addSubview(serviceProductLabel)
        $0.addSubview(serviceProductInfo)
        return $0
    }(UIView())
    
    lazy var serviceProductLabel = {
        $0.text = "Страхование"
        $0.font = .systemFont(ofSize: .init(14))
        $0.textColor = .black
        $0.frame = CGRect(x: 18, y: 20, width: 100, height: 11)
        return $0
    }(UILabel())
    
    lazy var serviceProductInfo = {
        $0.text = "Защитите имущество\nздоровье и жизнь"
        $0.numberOfLines = 0
        $0.font = .systemFont(ofSize: .init(12))
        $0.textColor = .black
        $0.frame = CGRect(x: 18, y: 36, width: 200, height: 32)
        return $0
    }(UILabel())
    
    lazy var residentialComplexes = {
        $0.text = "Жилые комплексы"
        $0.font = .systemFont(ofSize: .init(24.76))
        $0.textColor = .black
        $0.frame = CGRect(x: 17, y: topView.frame.maxY + 197, width: 217, height: 20)
        return $0
    }(UILabel())
    
    lazy var residentialView = {
        $0.backgroundColor = .lightGray
        $0.layer.cornerRadius = 10
        $0.frame = CGRect(x: 14, y: residentialComplexes.frame.maxY + 29, width: view.frame.width - 28, height:  199)
        $0.addSubview(ImageResidentialComplexes)
        $0.addSubview(residentialName)
        $0.addSubview(price)
        $0.addSubview(address)
        return $0
    }(UIView())
    
    lazy var ImageResidentialComplexes = {
        $0.layer.cornerRadius = 10
        $0.layer.masksToBounds = true
        $0.image = UIImage(named: "1")
        $0.frame = CGRect(x: 0, y: 0, width: view.frame.width - 28, height:  122)
        return $0
    }(UIImageView())
    
    lazy var residentialName = {
        $0.text = "Ольховый Квартал"
        $0.font = .systemFont(ofSize: .init(11.65))
        $0.textColor = .black
        $0.frame = CGRect(x: 12, y: ImageResidentialComplexes.frame.maxY + 9 , width: 140, height: 12)
        return $0
    }(UILabel())
    
    lazy var price = {
        $0.text = "от 8 029 445 р"
        $0.font = .systemFont(ofSize: .init(11.65))
        $0.textColor = .black
        $0.frame = CGRect(x: 12, y: residentialName.frame.maxY + 9 , width: 140, height: 12)
        return $0
    }(UILabel())
    
    lazy var address = {
        $0.text = "Москва, поселение Сосенское, деревня Столболово"
        $0.font = .systemFont(ofSize: .init(11.65))
        $0.textColor = .gray
        $0.frame = CGRect(x: 12, y: price.frame.maxY + 9 , width: 400, height: 12)
        return $0
    }(UILabel())
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        view.backgroundColor = .white
        view.addSubview(serviceView)
        view.addSubview(topView)
        view.addSubview(serviceLabel)
        view.addSubview(residentialComplexes)
        view.addSubview(residentialView)

    }
}
