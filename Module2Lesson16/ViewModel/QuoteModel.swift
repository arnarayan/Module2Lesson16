//
//  QuoteModel.swift
//  Module2Lesson16
//
//  Created by Anand Narayan on 2022-02-10.
//

import Foundation

class QuoteModel: ObservableObject {
    

    @Published var quotes = [Quote]()
    
    init() {
        self.quotes = DataService.getLocalData()
    }
    
}
