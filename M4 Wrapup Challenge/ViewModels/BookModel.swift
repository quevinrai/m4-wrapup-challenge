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
}
