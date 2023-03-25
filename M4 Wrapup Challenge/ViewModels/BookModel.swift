//
//  BookModel.swift
//  M4 Wrapup Challenge
//
//  Created by Quevin Bambasi on 3/22/23.
//

import Foundation

class BookModel: ObservableObject {
    @Published var books = [Book]()
    
    init() {
        self.books = DataService.getLocalData()
    }
    
    // Update favourite
    func updateFavourite(forID: Int) {
        if let index = books.firstIndex(where: { $0.id == forID }) {
            books[index].isFavourite.toggle()
        }
    }
    
    // Update rating
    func updateRating(forID: Int, rating: Int) {
        if let index = books.firstIndex(where: { $0.id == forID }) {
            books[index].rating = rating
        }
    }
    
    // Update current page
    func updateCurrentPage(forID: Int, page: Int) {
        if let index = books.firstIndex(where: { $0.id == forID }) {
            books[index].currentPage = page
        }
    }
}
