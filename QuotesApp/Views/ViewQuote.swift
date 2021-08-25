//
//  ViewQuote.swift
//  QuotesApp
//
//  Created by David Cannon on 8/21/21.
//

import SwiftUI

struct ViewQuote: View {
    
    var quote:Quote
    
    var body: some View {
        ZStack {
        Image(quote.author)
            .brightness(0.2)
            .blur(radius: 5)
            VStack {
                Text(quote.author)
                    .font(.system(size: 55))
                    .fontWeight(.bold)
                    .bold()
                
                ForEach (quote.quoteList, id: \.self) { quote in
                    Text("\"" + quote + "\"")
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                        .frame(width: 370, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding(.vertical, 14.0)
                }
        }
            .foregroundColor(Color.black)
    }
}

struct ViewQuote_Previews: PreviewProvider {
    static var previews: some View {
        let model = QuoteModel()
        
        ViewQuote(quote: model.Quotes[2])
    }
}
}
