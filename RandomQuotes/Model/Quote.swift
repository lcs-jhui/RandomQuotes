//
//  Quote.swift
//  RandomQuotes
//
//  Created by Justin Hui on 17/4/2023.
//

import Foundation

struct Quote: Codable {
    let quoteText: String
    let quoteAuthor: String
    let senderName: String
    let senderLink: String
    let quoteLink: String
}



let exampleQuote = Quote(quoteText: "We know from science that nothing in the universe exists as an isolated or independent entity.", quoteAuthor: "Margaret Wheatley", senderName: "", senderLink: "", quoteLink: "http://forismatic.com/en/76d16e15e8/")
