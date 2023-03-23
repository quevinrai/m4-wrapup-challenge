//
//  BookDetailsView.swift
//  M4 Wrapup Challenge
//
//  Created by Quevin Bambasi on 3/22/23.
//

import SwiftUI

struct BookDetailsView: View {
    @State var ratingIndex = 1
    var book: Book
    
    var body: some View {
        VStack(alignment: .leading, spacing: 40) {
            Text(book.title)
                .bold()
                .font(.largeTitle)
                .padding(.leading)
            
            GeometryReader { geo in
                VStack(alignment: .center) {
                    VStack {
                        VStack {
                            Text("Read Now!")
                                .font(.title)
                            NavigationLink(destination: BookPagesView(book: book)) {
                                Image(book.image)
                                    .resizable()
                                    .frame(width: geo.size.width/2, height: geo.size.height/2)
                            }
                        }
                        
                        VStack(spacing: 20) {
                            Text("Mark for later!")
                                .bold()
                            Image(systemName: "star")
                                .foregroundColor(.yellow)
                                .font(.system(size: 32))
                        }
                        .padding(.top, 30)
                        
                        VStack {
                            Text("Rate Amazing Words")
                                .bold()
                            Picker("Rating", selection: $ratingIndex) {
                                Text("1").tag(1)
                                Text("2").tag(2)
                                Text("3").tag(3)
                                Text("4").tag(4)
                                Text("5").tag(5)
                            }.pickerStyle(.segmented)
                        }
                        .padding(.top, 30)
                        .padding([.leading, .trailing], 30)
                        
                    }
                    .frame(width: geo.size.width-60)
                }.frame(maxWidth: .infinity)
            }
            
        }
    }
}

struct BookDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        let model = BookModel()
        
        BookDetailsView(book: model.books[0])
            .environmentObject(BookModel())
    }
}

/*
Image(systemName: "star")
 .foregroundColor(.yellow)
Image(systemName: "star.fill")
 .foregroundColor(.yellow)
*/
