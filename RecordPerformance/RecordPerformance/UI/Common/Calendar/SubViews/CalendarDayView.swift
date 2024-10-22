//
//  CalendarDayView.swift
//  RecordPerformance
//
//  Created by DoHyoung Kim on 10/22/24.
//

import SwiftUI

struct CalendarDayView: View {
    @Binding var currentDate: Date
    let date: Date
    
    var touchHandler: () -> Void
    
    var body: some View {
        if date.isSameMonth(date: currentDate) {
            Text(date.convertFormat("dd"))
                .font(.system(size: body2, weight: .regular))
                .foregroundStyle(date.weekOfDay == 0 ? Color.error : Color.onSurfaceLow)
        } else {
            Text(date.convertFormat("dd"))
                .font(.system(size: body2, weight: .regular))
                .foregroundStyle(date.weekOfDay == 0 ? Color.error : Color.onSurfaceLow)
        }
    }
}

#Preview {
    CalendarDayView(currentDate: .constant(Date()), date: Date()) {
        
    }
}
