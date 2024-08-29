//
//  Time.swift
//  FlickSeats
//
//  Created by Brian Suárez Santiago on 28/08/24.
//

import Foundation

struct MockTimeSlot: Decodable, Equatable {
    let time: String
    let price: Double

    static func == (lhs: MockTimeSlot, rhs: MockTimeSlot) -> Bool {
        return lhs.time == rhs.time && lhs.price == rhs.price
    }
}
