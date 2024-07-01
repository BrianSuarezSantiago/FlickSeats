//
//  Extension+String.swift
//  FlickSeats
//
//  Created by Brian Suárez Santiago
//

import Foundation

extension String {
    func toDate()->Date {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        return formatter.date(from: self)!
    }
}
