//
//  BookList.swift
//  M4 Wrapup Challenge
//
//  Created by Quevin Bambasi on 3/23/23.
//

import SwiftUI

struct BookList: View {
    @EnvironmentObject var model : BookModel
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 30) {
                    ForEach(model.books) { book in
                        NavigationLink(destination: BookDetails(book: book)) {
                            BookPreview(book: book)
                                .padding([.leading, .trailing, .top])
                        }
                    }
                }
                
            }
            .navigationBarTitle("My Library")
        }
    }
}

struct BookList_Previews: PreviewProvider {
    static var previews: some View {
        BookList()
            .environmentObject(BookModel())
    }
}
