//
//  Extensions.swift
//  expense-tracker
//
//  Created by Melvin Tong on 28/2/2023.
//

import Foundation
import SwiftUI

extension Color {
    static let background = Color("Background")
    static let icon = Color("Icon")
    static let text = Color("Text")
    static let systemBackground = Color(uiColor: .systemBackground)
}

extension DateFormatter {
    static let allNumericDMY: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        
        return formatter
    }()
}

extension String {
    func dateParsed() -> Date{
        guard let parseDate = DateFormatter.allNumericDMY.date(from: self) else { return Date() }
        
        return parseDate
    }
}

extension Date {
    func formatted() -> String {
        return self.formatted(.dateTime.year().month().day())
    }
}

extension Double {
    func roundedTo2Digits() -> Double {
        return (self * 100).rounded() / 100
    }
}
