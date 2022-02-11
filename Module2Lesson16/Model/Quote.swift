//
//  Quote.swift
//  Module2Lesson16
//
//  Created by Anand Narayan on 2022-02-10.
//

class Quote: Identifiable, Decodable {
    

    var id:Int
    var category: String
    var author: String
    var authorImage: String
    var imageBackground: String
    var quote: String
    var quotes: [String]
}

