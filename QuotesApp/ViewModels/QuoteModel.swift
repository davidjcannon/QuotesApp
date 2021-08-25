//
//  QuoteModel.swift
//  QuotesApp
//
//  Created by David Cannon on 8/20/21.
//

import Foundation

class QuoteModel: ObservableObject {
    
    @Published var Quotes = [Quote]()
    
    init() {
        
        self.Quotes = DataService().getData()
    }
}
