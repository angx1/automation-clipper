//
//  QuoteViewModel.swift
//  python-automation
//
//  Created by Angel Rodriguez Moran on 13/10/24.
//



import Foundation

@MainActor
class QuoteViewModel: ObservableObject {
    @Published var quote: Quote?
    @Published var errorMessage: String?
    
    func fetchQuote() {
        Task {
            do {
                let fetchedQuote = try await APIService.shared.fetchQuote()
                self.quote = fetchedQuote
                self.errorMessage = nil
            } catch {
                self.errorMessage = error.localizedDescription
                self.quote = nil
            }
        }
    }
}


