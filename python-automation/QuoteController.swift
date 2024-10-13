//
//  QuoteViewModel.swift
//  python-automation
//
//  Created by Angel Rodriguez Moran on 13/10/24.
//



import Foundation

struct QuoteResponse: Decodable {
    let results: [Quote]
}

struct Quote: Decodable {
    let text: String
    let author: String
}

class APIService {
    static let shared = APIService()
    private init() {}
    
    func fetchQuote() async throws -> Quote {
        guard let url = URL(string: "https://stoic-quotes.com/api/quote") else {
            throw URLError(.badURL)
        }
                
        let (data, _) = try await URLSession.shared.data(from: url)
        let quote = try JSONDecoder().decode(Quote.self, from: data)
        return quote

    }
}

