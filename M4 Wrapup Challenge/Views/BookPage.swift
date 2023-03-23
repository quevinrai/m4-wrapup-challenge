//
//  BookPage.swift
//  M4 Wrapup Challenge
//
//  Created by Quevin Bambasi on 3/23/23.
//

import SwiftUI

struct BookPage: View {
    var bookContent: String
    
    var body: some View {
        VStack {
            Text(bookContent)
                .padding()
            
            Spacer()
        }
    }
}

struct BookPage_Previews: PreviewProvider {
    static var previews: some View {
        let model = BookModel()
        
        BookPage(bookContent: "")
    }
}
