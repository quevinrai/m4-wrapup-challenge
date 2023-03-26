//
//  BookPagesView.swift
//  M4 Wrapup Challenge
//
//  Created by Quevin Bambasi on 3/22/23.
//

import SwiftUI

struct BookPageContent: View {
    @EnvironmentObject var model : BookModel
    @State var page = 0
    
    var book : Book
    
    var body: some View {
        TabView(selection: $page) {
            ForEach(book.content.indices, id: \.self) { index in
                VStack(alignment: .center) {
                    Text(book.content[index])
                        .tag(index)
                    
                    Spacer()
                    
                    Text("\(page + 1)")
                }
            }
            .padding()
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
        .onChange(of: page, perform: { newValue in
            model.updateCurrentPage(forID: book.id, page: page)
        })
        .onAppear { page = book.currentPage }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct BookPageContent_Previews: PreviewProvider {
    static var previews: some View {
        BookPageContent(book: Book())
            .environmentObject(BookModel())
    }
}
