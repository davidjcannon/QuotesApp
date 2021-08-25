//
//  QuoteCard.swift
//  QuotesApp
//
//  Created by David Cannon on 8/24/21.
//

import SwiftUI

struct QuoteCard: View {
    
    var quote:Quote
        
        var body: some View {
            
            ZStack {
                Image(quote.author)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 350, height: 350, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipped()
                    .cornerRadius(20)
                VStack(alignment: .center) {
                    let num = Int.random(in: 0...quote.quoteList.count-1)
                    Text("\"" + quote.quoteList[num] + "\"")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .bold()
                        .frame(width: 340, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    Text("- " + quote.author)
                }
                .foregroundColor(.white)
                .shadow(color: .black, radius: 10, x: 2, y: 2)
                .padding(.horizontal, 35.0)
            }
            
        }
}

struct QuoteCard_Previews: PreviewProvider {
    static var previews: some View {
        //QuoteCard(quote: Quote.testData())
        let model = QuoteModel()
        QuoteCard(quote: model.Quotes[1])
    }
}
