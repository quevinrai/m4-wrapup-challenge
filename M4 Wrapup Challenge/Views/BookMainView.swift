//
//  ContentView.swift
//  M4 Wrapup Challenge
//
//  Created by Quevin Bambasi on 3/22/23.
//

import SwiftUI

struct BookMainView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("My Library")
                .bold()
                .font(.largeTitle)
                .padding(.leading)
            
            ScrollView {
                VStack(spacing: 40) {
                    ForEach(0..<5, id: \.self) { i in
                        Button(action: {}) {
                            VStack(alignment: .leading) {
                                Text("Amazing Words")
                                    .foregroundColor(.black)
                                    .bold()
                                    .font(.title)
                                Text("Sir Prise Party")
                                    .foregroundColor(.black)
                                Image("cover1")
                                    .resizable()
                                    .clipped()
                                    .aspectRatio(contentMode: .fill)
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10)
                                .fill(.white)
                                .shadow(color: .gray, radius: 4, x: -5, y: 5))
                        }
                        .padding([.top, .bottom], 5)
                    }
                    
                }
                .padding([.leading, .trailing])
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BookMainView()
    }
}
