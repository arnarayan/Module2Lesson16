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
        VStack {
            Text(quote.author)
            Text(quote.category)
        }
        
    }
}

struct QuoteDetail_Previews: PreviewProvider {
    static var previews: some View {
        let model = QuoteModel()
        QuoteDetail(quote: model.quotes[0])
    }
}
