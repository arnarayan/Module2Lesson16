//
//  CardView.swift
//  Module2Lesson16
//
//  Created by Anand Narayan on 2022-02-10.
//

import SwiftUI

struct CardView: View {
    
    var quote: Quote
    
    var body: some View {
        VStack{
            Image(quote.imageBackground)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack(alignment: .leading) {
                Text("\(quote.category)")
                    .font(.headline)
                    .foregroundColor(.secondary)
                Text("\(quote.quote)")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(.primary)
                    .lineLimit(3)
                Text("Written by \(quote.author)".uppercased())
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            Divider()
            Spacer()
        }.padding([.leading, .bottom, .trailing], 11.0).cornerRadius(25)
        

    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        let model = QuoteModel()
        CardView(quote: model.quotes[0])
    }
}
