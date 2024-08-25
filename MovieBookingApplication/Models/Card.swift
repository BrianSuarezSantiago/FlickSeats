//
//  Card.swift
//  MovieBookingApplication
//
//  Created by Brian Suárez Santiago on 28/08/24.
//

import Foundation

struct Card: Codable {
    let id: String
    let cardholderName: String
    let cardNumber: String
    let expirationDate: String
    let cvc: String
    let brand: CardBrand

    enum CardBrand: String, Codable {
        case visa
        case mastercard
        case amex
        case discover
        case other
    }
}
