//
//  ContentView.swift
//  M4 Wrapup Challenge
//
//  Created by Quevin Bambasi on 3/22/23.
//

import SwiftUI

struct BookMainView: View {
    @EnvironmentObject var model: BookModel
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("My Library")
                    .bold()
                    .font(.largeTitle)
                    .padding(.leading)
                
                ScrollView {
                    VStack(spacing: 40) {
                        ForEach(0..<model.books.count, id: \.self) { i in
                            NavigationLink(destination: BookDetailsView(book: model.books[i]), label: {
                                VStack(alignment: .leading) {
                                    Text(model.books[i].title)
                                        .foregroundColor(.black)
                                        .bold()
                                        .font(.title)
                                        .multilineTextAlignment(.leading)
                                    Text(model.books[i].author)
                                        .italic()
                                        .foregroundColor(.black)
                                    Image(model.books[i].image)
                                        .resizable()
                                        .clipped()
                                        .aspectRatio(contentMode: .fill)
                                }
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 10)
                                    .fill(.white)
                                    .shadow(color: .gray, radius: 4, x: -5, y: 5))
                            })
                            .padding([.top, .bottom], 5)
                        }
                        
                    }
                    .padding([.leading, .trailing])
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BookMainView()
            .environmentObject(BookModel())
    }
}
