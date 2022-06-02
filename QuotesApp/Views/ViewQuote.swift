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
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 1000.0, height: 1000.0)
            .brightness(0.2)
            .blur(radius: 5)
            VStack {
                Text(quote.author)
                    .fontWeight(.bold)
                    .font(.system(size: 55))
                    .multilineTextAlignment(.center)
                    .frame(width: 370)
                
                ForEach (quote.quoteList, id: \.self) { quote in
                    Text("\"" + quote + "\"")
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                        .padding(.vertical, 14.0)
                        .padding(.horizontal, 8.0)
                        .frame(width: 370, alignment: .center)
                }
        }
            .foregroundColor(Color.black)
    }
        
}

struct ViewQuote_Previews: PreviewProvider {
    static var previews: some View {
        let model = QuoteModel()
        
        ViewQuote(quote: model.Quotes[1])
    }
}
}
