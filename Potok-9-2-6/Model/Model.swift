//
//  Model.swift
//  Potok-9-2-6
//
//  Created by DOODESH . on 29.11.2024.
//

import Foundation


struct Card {
    var image: String
    var nameLabel: String
    var infoName: String
    var date: String
    var text: String

    
    
    
    static var allCards: [Card] {
         [
            Card(image: "1", nameLabel: "Имя Фамилия", infoName: "Заголовок", date: "20 ноября 2014", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore"),
            Card(image: "2", nameLabel: "Имя Фамилия", infoName: "Заголовок", date: "19 ноября 2014", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore")
        ]
        
    }
    
}
