//
//  Model.swift
//  Potok-9-2-5
//
//  Created by DOODESH . on 27.11.2024.
//
import Foundation

struct TableItem {
    var image: String
    var text: String
    var secondText: String? = nil
    
    
    
    static func mockData() -> [TableItem] {
        [
            TableItem(image: "1", text: "User l"),
            TableItem(image: "2", text: "User 2"),
            TableItem(image: "3", text: "User 3"),
            TableItem(image: "4", text: "User 4")
        ]
    }
    
    static func secondMockData() -> [TableItem] {
        [
            TableItem(image: "5", text: "Group 1", secondText: "some Text"),
            TableItem(image: "6", text: "Group 2", secondText: "some Text"),
            TableItem(image: "7", text: "Group 3", secondText: "some Text"),
            TableItem(image: "8", text: "Group 4", secondText: "some Text")
        ]
    }}
