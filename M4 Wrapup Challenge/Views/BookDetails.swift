//
//  BookDetailsView.swift
//  M4 Wrapup Challenge
//
//  Created by Quevin Bambasi on 3/22/23.
//

import SwiftUI

struct BookDetails: View {
    @EnvironmentObject var model : BookModel
    @State var rating = 2
    
    var book : Book
    
    var body: some View {
        VStack(spacing: 30) {
            NavigationLink(destination: BookPageContent(book: book)) {
                VStack(spacing: 20) {
                    Text("Read Now!")
                        .font(.title)
                    Image(book.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            }
            .foregroundColor(.black)
            
            VStack(spacing: 10) {
                Text("Mark for later!")
                    .font(.headline)
                Button(action: { model.updateFavourite(forID: book.id) }) {
                    Image(systemName: book.isFavourite ? "star.fill" : "star")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.yellow)
                }
            }
            
            VStack(spacing: 20) {
                Text("Rate \(book.title)")
                    .font(.headline)
                Picker("Rating", selection: $rating) {
                    Text("1").tag(1)
                    Text("2").tag(2)
                    Text("3").tag(3)
                    Text("4").tag(4)
                    Text("5").tag(5)
                }
                .pickerStyle(.segmented)
                .onChange(of: rating) { newValue in
                    model.updateRating(forID: book.id, rating: rating)
                }
            }
        }
        .navigationBarTitle(book.title)
        .padding([.leading, .trailing], 50)
        .onAppear { rating = book.rating }
    }
}

struct BookDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetails(book: Book())
    }
}
