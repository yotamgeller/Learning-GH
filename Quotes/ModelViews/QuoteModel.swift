//
//  QuoteModel.swift
//  Quotes
//
//  Created by Yotam Geller on 06/08/2021.
//

import Foundation

class QuoteModel: ObservableObject {
    
    @Published var quotes = [Quote]()
    
    init () {
        
        self.quotes = DataService.getLocalData()
    
    }
    
    
    
}
