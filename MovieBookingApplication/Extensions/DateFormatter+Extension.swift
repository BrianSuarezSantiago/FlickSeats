//
//  DateFormatter+Extension.swift
//  MovieBookingApplication
//
//  Created by Brian Suárez Santiago on 28/08/24.
//

import Foundation

extension DateFormatter {
  static func shortWeekday(_ date: Date) -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "E"
    return formatter.string(from: date)
  }
  
  static func formattedDate(date: Date, format: String) -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = format
    return formatter.string(from: date)
  }
}
