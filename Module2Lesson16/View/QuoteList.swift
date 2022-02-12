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
            ScrollView{
                ForEach(model.quotes) { q in
                    NavigationLink(destination: QuoteDetail(quote: q), label: {
                        HStack {
                            CardView(quote: q)
                        }

                        
                    })
                }.navigationBarTitle("All Quotes")
                
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteList()
    }
}
