//
//  Model.swift
//  Potok-9-2-10
//
//  Created by DOODESH . on 16.12.2024.
//

import Foundation

struct CollectionSection: Identifiable {
    let id: String = UUID().uuidString
//    let header: String
    let items: [CollectionItem]
    
    static func mockData() -> [CollectionSection] {
        let storyItems = [
            CollectionItem(image: "2", header: "Заголовок1", name: "Name1", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "3", header: "Заголовок2", name: "Name2", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "4", header: "Заголовок3", name: "Name3", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "1", header: "Заголовок4", name: "Name4", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "2", header: "Заголовок5", name: "Name5", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
        ]
        let messagesItems = [
            CollectionItem(image: "2", header: "Заголовок1", name: "Name1", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "3", header: "Заголовок2", name: "Name2", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "4", header: "Заголовок3", name: "Name3", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "1", header: "Заголовок4", name: "Name4", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "2", header: "Заголовок5", name: "Name5", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
        ]
        let newsItems = [
            CollectionItem(image: "2", header: "Заголовок1", name: "Name1", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "3", header: "Заголовок2", name: "Name2", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "4", header: "Заголовок3", name: "Name3", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "1", header: "Заголовок4", name: "Name4", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "2", header: "Заголовок5", name: "Name5", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
        ]
        let bannerItems = [
            CollectionItem(image: "2", header: "Заголовок1", name: "Name1", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "3", header: "Заголовок2", name: "Name2", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "4", header: "Заголовок3", name: "Name3", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "1", header: "Заголовок4", name: "Name4", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
            CollectionItem(image: "2", header: "Заголовок5", name: "Name5", text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit"),
        ]
        let storySection = CollectionSection(items: storyItems)
        let messagesSection = CollectionSection(items: messagesItems)
        let newsSection = CollectionSection(items: newsItems)
        let bannerSection = CollectionSection(items: bannerItems)
        
        return [storySection, messagesSection, newsSection, bannerSection]
            

    }
}

struct CollectionItem: Identifiable {
    let id: String = UUID().uuidString
    let image: String
    var header: String
    var name: String
    var text: String
}
