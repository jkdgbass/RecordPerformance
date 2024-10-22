//
//  Date_Extensions.swift
//  RecordPerformance
//
//  Created by DoHyoung Kim on 10/22/24.
//

import Foundation
import SwiftUI

extension Date {
    func convertFormat(_ to: String = "yyyy.mm.dd") -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = to
        return formatter.string(from: self)
    }
    
    var weekOfDay: Int {
        return Calendar.current.component(.weekday, from: self)
    }
    
    private func isEqual(to date: Date, component: Calendar.Component) -> Bool {
        return Calendar.current.isDate(self, equalTo: date, toGranularity: component)
    }
    
    func isSameMonth(date: Date) -> Bool {
        return isEqual(to: date, component: .month)
    }
    
    func getDaysInMonth() -> [Date] {
        let calendar = Calendar.current
        let monthRange = calendar.range(of: .day, in: .month, for: self)!
        let components = calendar.dateComponents([.year, .month], from: self)
        
        var date = calendar.date(from: components)!
        
        var dates: [Date] = []
        for _ in monthRange {
            dates.append(date)
            date = calendar.date(byAdding: .day, value: 1, to: date)!
        }
        
        while let firstDate = dates.first, firstDate.weekOfDay > 1 {
            if let minusDate = calendar.date(byAdding: .day, value: -1, to: firstDate) {
                dates.insert(minusDate, at: 0)
            }
        }
        
        while dates.count < 42, let lastDate = dates.last {
            if let plusDate = calendar.date(byAdding: .day, value: 1, to: lastDate) {
                dates.append(plusDate)
            }
        }
        
        return dates
    }
}
