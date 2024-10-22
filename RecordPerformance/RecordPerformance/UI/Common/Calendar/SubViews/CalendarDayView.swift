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
            Text(date.convertFormat("d"))
                .font(.system(size: body2, weight: .regular))
                .foregroundStyle(date.weekOfDay == 0 ? Color.error : Color.onSurfaceLow)
                .frame(width: 36, height: 36)
                .background {
                    if currentDate.isSameDate(compareDate: date) {
                        Color.primary
                    } else {
                        Color.clear
                    }
                }
                .clipShape(RoundedRectangle(cornerRadius: radiusSm))
                .onTapGesture {
                    touchHandler()
                }
        } else {
            Text(date.convertFormat("d"))
                .font(.system(size: body2, weight: .regular))
                .foregroundStyle(date.weekOfDay == 0 ? Color.error : Color.onSurfaceBright)
                .frame(width: 36, height: 36)
                .background {
                    if currentDate.isSameDate(compareDate: date) {
                        Color.primary
                    } else {
                        Color.clear
                    }
                }
                .clipShape(RoundedRectangle(cornerRadius: radiusSm))
                .onTapGesture {
                    touchHandler()
                }
        }
    }
    
}

#Preview {
    CalendarDayView(currentDate: .constant(Date()), date: Date()) {
        
    }
}
