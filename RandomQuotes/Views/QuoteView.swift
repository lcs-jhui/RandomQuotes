//
//  QuoteView.swift
//  RandomQuotes
//
//  Created by Justin Hui on 16/4/2023.
//

import SwiftUI

struct QuoteView: View {
    var body: some View {
        NavigationView{
            
            VStack{
                
                Text("Do or do not, there is no try")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .padding()
                Text("-Yoda")
                    .font(.title2)
                    .italic()
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
