//
//  ViewController.swift
//  Potok-9-2-1
//
//  Created by DOODESH . on 14.11.2024.
//

import UIKit

class ViewController: UIViewController {
    
    var labelNameRU = UILabel()
    var labelSurnameRU = UILabel()
    var labelNumberRU = UILabel()
    var labelNameEN = UILabel()
    var labelSurnameEN = UILabel()
    var labelNumberEN = UILabel()
    
    var button1 = UIButton()
    var button2 = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelStile()
        buttonStile()
    }

func labelStile(){
    let width = view.frame.width
    
    labelNameRU.text = "Имя: "
    labelNameRU.textColor = .black
    labelNameRU.frame = CGRect(x: 10, y: width - 300, width: labelNameRU.intrinsicContentSize.width, height: 30)
    view.addSubview(labelNameRU)
    
    labelNameEN.text = "Name"
    labelNameEN.textColor = .red
    labelNameEN.frame = CGRect(x: labelNameRU.intrinsicContentSize.width + 10, y: width - 300, width: labelNameEN.intrinsicContentSize.width, height: 30)
    view.addSubview(labelNameEN)
    
    
    labelSurnameRU.text = "Фамилия: "
    labelSurnameRU.textColor = .black
    labelSurnameRU.frame = CGRect(x: 10, y: width - 270, width: labelSurnameRU.intrinsicContentSize.width, height: 30)
    view.addSubview(labelSurnameRU)
    
    labelSurnameEN.text = "Surname"
    labelSurnameEN.textColor = .red
    labelSurnameEN.frame = CGRect(x: labelSurnameRU.intrinsicContentSize.width + 10, y: width - 270, width: labelSurnameEN.intrinsicContentSize.width, height: 30)
    view.addSubview(labelSurnameEN)
    
    
    labelNumberRU.text = "Номер потока: "
    labelNumberRU.textColor = .black
    labelNumberRU.frame = CGRect(x: 10, y: width - 240, width: labelNumberRU.intrinsicContentSize.width, height: 30)
    view.addSubview(labelNumberRU)
    
    labelNumberEN.text = "ios 9"
    labelNumberEN.textColor = .red
    labelNumberEN.frame = CGRect(x: labelNumberRU.intrinsicContentSize.width + 10, y: width - 240, width: labelNumberEN.intrinsicContentSize.width, height: 30)
    view.addSubview(labelNumberEN)
    }
    
  func buttonStile(){
      button1.setTitle("Добавить данные", for: .normal)
      button1.setTitleColor(.white, for: .normal)
      button1.backgroundColor = .black
      button1.layer.cornerRadius = 20
      button1.frame = CGRect(x: 16, y: view.frame.height - 200, width: view.frame.width - 32, height: 60)
      view.addSubview(button1)
        
        button2.setTitle("Очистить данные", for: .normal)
      button2.setTitleColor(.blue, for: .normal)
      button2.frame = CGRect(x: 16, y: view.frame.height - 130, width: view.frame.width - 32, height: 50)
      view.addSubview(button2)
    }
}

