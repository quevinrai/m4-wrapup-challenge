//
//  Book.swift
//  M4 Wrapup Challenge
//
//  Created by Quevin Bambasi on 3/22/23.
//

import Foundation

class Book: Decodable {
    var title: String
    var author: String
    var isFavourite: Bool
    var currentPage: Int
    var rating: Int
    var id: Int
    var content: [String]
}
