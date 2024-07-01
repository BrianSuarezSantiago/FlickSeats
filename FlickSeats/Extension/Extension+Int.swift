//
//  Extension+Int.swift
//  FlickSeats
//
//  Created by Brian Suárez Santiago
//

import Foundation

extension Int {
    func formatSingleDigitNumber() -> String {
        self < 10 ? "0\(self)" : "\(self)"
    }
}
