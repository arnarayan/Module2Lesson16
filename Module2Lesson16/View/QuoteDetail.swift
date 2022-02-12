//
//  QuoteDetail.swift
//  Module2Lesson16
//
//  Created by Anand Narayan on 2022-02-10.
//

import SwiftUI

struct QuoteDetail: View {
    
    var quote: Quote
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image(quote.authorImage)
                    .resizable()
                    .scaledToFill()

                .padding(.bottom, 1.0)
                
                VStack(alignment: .leading) {
                    ForEach(quote.quotes, id:\.self) { quote in
                        Text("* " + quote)
                            .padding([.leading, .bottom], 1.0)
                    }
                }
                .padding(.horizontal, 10.0)


 
            }

        }.navigationTitle(quote.author)
    }
}

struct QuoteDetail_Previews: PreviewProvider {
    static var previews: some View {
        let model = QuoteModel()
        QuoteDetail(quote: model.quotes[0])
    }
}
