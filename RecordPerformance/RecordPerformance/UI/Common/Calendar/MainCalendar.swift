//
//  MainCalendar.swift
//  RecordPerformance
//
//  Created by DoHyoung Kim on 10/18/24.
//

import SwiftUI

struct MainCalendar: View {
    @Binding var currentDate: Date
    
    private let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    private let weekOfDays = ["일", "월", "화", "수", "목", "금", "토"]
    
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 0) {
                Text(currentDate.convertFormat("yyyy.MM"))
                    .foregroundStyle(Color.white)
                    .font(.system(size: title2, weight: .regular))
                
                Spacer()
                
                Button {
                    currentDate = currentDate.beforeMonth
                } label: {
                    Image("btn_gray_back")
                }
                .padding(.trailing, 16)

                Button {
                    currentDate = currentDate.nextMonth
                } label: {
                    Image("btn_gray_next")
                }
            }
            .padding(.bottom, 24)
            
            HStack(spacing: 0) {
                ForEach(0..<weekOfDays.count, id: \.self) { index in
                    if index == 0 {
                        Text(weekOfDays[index])
                            .foregroundStyle(Color.error)
                            .font(.system(size: body2, weight: .regular))
                            .frame(width: 36)
                    } else {
                        Text(weekOfDays[index])
                            .foregroundStyle(Color.onSurfaceLowest)
                            .font(.system(size: body2, weight: .regular))
                            .frame(width: 36)
                    }
                    
                    if index != 6 {
                        Spacer()
                    }
                }
            }
            .frame(height: 36)
            .padding(.bottom, 8)
            
            LazyVGrid(columns: columns, spacing: 0) {
                ForEach(currentDate.getDaysInMonth(), id: \.self) { thisDate in
                    CalendarDayView(currentDate: $currentDate, date: thisDate) {
                        currentDate = thisDate
                    }
                    .padding(.bottom, 8)
                }
            }
        }
    }
}

#Preview {
    MainCalendar(currentDate: .constant(Date()))
}
