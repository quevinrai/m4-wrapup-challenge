//
//  Book.swift
//  M4 Wrapup Challenge
//
//  Created by Quevin Bambasi on 3/22/23.
//

import Foundation

struct Book: Identifiable, Decodable {
    var image: String = "cover1"
    var title: String = "Title"
    var author: String = "Author"
    var isFavourite: Bool = false
    var currentPage: Int = 0
    var rating: Int = 2
    var id: Int = 1
    var content: [String] = ["I am a test book"]
}
