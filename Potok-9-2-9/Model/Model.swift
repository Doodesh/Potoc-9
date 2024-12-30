//
//  Model.swift
//  Potok-9-2-9
//
//  Created by DOODESH . on 11.12.2024.
//

import Foundation
struct Card: Identifiable {
    var id: String = UUID().uuidString
    var userPhoto: String
    var userName: String
    var imageCntent: String
    var date: String
    var textName: String
    var textContent: String
    
    static var mocData: [Card] {
        [
            Card(userPhoto: "4", userName: "User Name", imageCntent: "1", date: "23 апреля 2024", textName: "Ut enim ad minim veniam", textContent: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in "),
            
            
            Card(userPhoto: "5", userName: "User Name2", imageCntent: "2", date: "24 апреля 2024", textName: "Ut enim ad minim veniam  eiusmod tempor", textContent: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore"),
            
            
            Card(userPhoto: "6", userName: "User Name3", imageCntent: "3", date: "25 апреля 2024", textName: "Ut enim ad minim veniam  eiusmod tempor", textContent: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do ")
            ]
            }
}
