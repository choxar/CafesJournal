//
//  Cafe.swift
//  CafesJournal
//
//  Created by elina.zambere on 20/02/2021.
//

import Foundation

class Cafe {
    var name: String
    var type: String
    var location: String
    var image: String
    var phone: String
    var summary: String
    var isVisited: Bool
    var rating: String
    
    init(name: String, type: String, location: String, image: String, phone: String, summary: String, isVisited: Bool, rating: String = "") {
        self.name = name
        self.type = type
        self.location = location
        self.image = image
        self.phone = phone
        self.summary = summary
        self.isVisited = isVisited
        self.rating = rating
    }
    
    convenience init() {
        self.init(name: "", type: "", location: "", image: "", phone: "", summary: "", isVisited: false)
    }
}
