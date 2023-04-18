//
//  QuoteView.swift
//  RandomQuotes
//
//  Created by Justin Hui on 16/4/2023.
//

import SwiftUI

struct QuoteView: View {
    
    //MARK: Stored Properties
    @State var currentQuote: Quote?
    
    var body: some View {
        NavigationView{
            
            VStack{
                
                if let currentQuote = currentQuote {
                    
                    Text(currentQuote.quoteText)
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .padding()
                    Text("-\(currentQuote.quoteAuthor)")
                        .font(.title2)
                        .italic()
                    
                } else {
                    //Show a spinning wheel indicator until the joke is loaded
                    ProgressView()
                }
            }
            .task {
                currentQuote = await NetworkService.fetch()
            }
            .navigationTitle("Random Quote")
        }
    }
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteView()
    }
}
