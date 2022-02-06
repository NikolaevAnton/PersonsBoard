//
//  DataManager.swift
//  PersonsBoard
//
//  Created by Anton Nikolaev on 05.02.2022.
//

import Foundation
class DataManager {
    
    static let shared = DataManager()
        
    let names = [
        "John", "Aaron", "Tim", "Ted",
        "Steven", "Sharon", "Nicola",
        "Allan", "Bruce", "Carl"
    ]
    
    let surnames = [
        "Smith", "Dow", "Isaacson", "Pennyworth",
        "Jankin", "Butler", "Black", "Robertson",
        "Murphy", "Williams"
    ]
    
    let emails = [
        "jjjj@mail.ru", "aaaa@mail.ru", "eeee@mail.ru",
        "hhhh@mail.ru", "wwww@mail.ru", "mmmm@mail.ru",
        "xxxx@mail.ru", "pppp@mail.ru", "ssss@mail.ru",
        "llll@mail.ru"
    ]
    
    let phones = [
        "745396026", "145036843", "287185656", "293520954",
        "562880225", "738594072", "825654134", "645898473",
        "432349845", "459477625"
    ]
    
    let photos = [
        "pic1", "pic2", "pic3", "pic4", "pic5", "pic6", "pic7", "pic8", "pic9", "pic10"
    ]
    
    private init() {}
    
}
