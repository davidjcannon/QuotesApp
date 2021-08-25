//
//  Quote.swift
//  QuotesApp
//
//  Created by David Cannon on 8/20/21.
//

import Foundation

struct Quote: Decodable, Identifiable {
    var id:UUID?
    var quoteList:[String]
    var author:String
    
    static func testData() -> Quote {
        
        let testAuthor = Quote(quoteList: ["Test", "Test2"], author: "David Cannon")
        
        return testAuthor
    }
    
}
