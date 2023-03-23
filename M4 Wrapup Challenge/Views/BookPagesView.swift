//
//  BookPagesView.swift
//  M4 Wrapup Challenge
//
//  Created by Quevin Bambasi on 3/22/23.
//

import SwiftUI

struct BookPagesView: View {
    @State var pageSelectionIndex = 4
    var book: Book
    
    var body: some View {
        VStack {
            TabView(selection: $pageSelectionIndex) {
                ForEach(0..<book.content.count, id: \.self) { i in
//                    Text(book.content[i])
//                        .tag(i + 1)
//                        .padding()
                    BookPage(bookContent: book.content[i])
                    .tag(i + 1)
                    .padding()
                }
                
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            Text("\(pageSelectionIndex)")
        }
    }
}

struct BookPagesView_Previews: PreviewProvider {
    static var previews: some View {
        let model = BookModel()
        
        BookPagesView(book: model.books[0])
    }
}
