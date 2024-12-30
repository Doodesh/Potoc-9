//
//  Model.swift
//  Potok-9-2-8
//
//  Created by DOODESH . on 08.12.2024.
//

import Foundation



struct CardModel: Identifiable {
    var id: String = UUID().uuidString
    var image: String
    var price: String
    var name: String
    var infProduct: String
    
    
    static var mockModel: [CardModel] {
        [
            CardModel(image: "1", price: "107 990 P", name: "Apple iPhone 14 Pro 256Gb Серебристый", infProduct: "Тип смартфон\nОперационная система iOS 16\nТип корпуса классический\nКонструкция водозащита\nМатериал корпуса стекло, керамика, нержавеющая сталь Тип SIM-карты\nNano Sim + eSIM\nКоличество SIM-карт1\nВес240г\nРазмеры 160.7x77.6x7.85 мм"),
            CardModel(image: "2", price: "119 990 P", name: "Apple iPhone 14 Pro 512Gb Золотой", infProduct: "Тип смартфон\nОперационная система iOS 16\nТип корпуса классический\nКонструкция водозащита\nМатериал корпуса стекло, керамика, нержавеющая сталь Тип SIM-карты\nNano Sim + eSIM\nКоличество SIM-карт1\nВес240г\nРазмеры 160.7x77.6x7.85 мм"),
            CardModel(image: "3", price: "62 990 P", name: "Apple iPhone 14 128Gb Голубой", infProduct: "Тип смартфон\nОперационная система iOS 16\nТип корпуса классический\nКонструкция водозащита\nМатериал корпуса стекло, керамика, нержавеющая сталь Тип SIM-карты\nNano Sim + eSIM\nКоличество SIM-карт1\nВес240г\nРазмеры 160.7x77.6x7.85 мм"),
            CardModel(image: "4", price: "119 990 P", name: "Apple iPhone 14 512Gb Cияющая звезда", infProduct: "Тип смартфон\nОперационная система iOS 16\nТип корпуса классический\nКонструкция водозащита\nМатериал корпуса стекло, керамика, нержавеющая сталь Тип SIM-карты\nNano Sim + eSIM\nКоличество SIM-карт1\nВес240г\nРазмеры 160.7x77.6x7.85 мм"),
            CardModel(image: "1", price: "107 990 P", name: "Apple iPhone 14 Pro 256Gb Серебристый", infProduct: "Тип смартфон\nОперационная система iOS 16\nТип корпуса классический\nКонструкция водозащита\nМатериал корпуса стекло, керамика, нержавеющая сталь Тип SIM-карты\nNano Sim + eSIM\nКоличество SIM-карт1\nВес240г\nРазмеры 160.7x77.6x7.85 мм"),
            CardModel(image: "2", price: "119 990 P", name: "Apple iPhone 14 512Gb Cияющая звезда", infProduct: "Тип смартфон\nОперационная система iOS 16\nТип корпуса классический\nКонструкция водозащита\nМатериал корпуса стекло, керамика, нержавеющая сталь Тип SIM-карты\nNano Sim + eSIM\nКоличество SIM-карт1\nВес240г\nРазмеры 160.7x77.6x7.85 мм"),
        ]
    }
}
