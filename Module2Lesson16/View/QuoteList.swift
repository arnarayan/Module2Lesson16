//
//  ContentView.swift
//  Module2Lesson16
//
//  Created by Anand Narayan on 2022-02-10.
//

import SwiftUI

struct QuoteList: View {
    
    @ObservedObject var model = QuoteModel()
    
    
    var body: some View {
        NavigationView {
            List(model.quotes) { q in
                    NavigationLink(destination: QuoteDetail(quote: q), label: {
                        HStack(){
                            Image(q.imageBackground)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height: 50, alignment: .center)
                                .clipped()
                                .cornerRadius(5)
                            Text(q.quote)
                                .multilineTextAlignment(.leading)
                        }
                        
                    })

                }.navigationBarTitle("All Quotes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteList()
    }
}
