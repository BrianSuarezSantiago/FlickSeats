//
//  Extension+Session.swift
//  FlickSeats
//
//  Created by Brian Suárez Santiago
//

import Foundation

extension Session {
    func toString() -> String {
        return "\(self.day) \(self.month) - \(self.time)"
    }
}
