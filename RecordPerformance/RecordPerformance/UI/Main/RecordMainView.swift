//
//  RecordMainView.swift
//  RecordPerformance
//
//  Created by DoHyoung Kim on 10/18/24.
//

import SwiftUI

struct RecordMainView: View {
    @StateObject var model = RecordMainViewModel()
    
    var body: some View {
        VStack(spacing: 0) {
            NavigationView(name: "Record")
            
            MainCalendar(currentDate: $model.currentDate)
                .padding(.all, 16)
            
            ScrollView {
                LazyVStack {
                    ForEach(1...10, id: \.self) { count in
                        RecordRowView()
                            .padding(.bottom, 32)
                    }
                }
            }
            .foregroundStyle(Color.surfaceContainerLow)
            .cornerRadius(radiusXl, corners: [.topLeft, .topRight])
        }
        .background {
            Color.black
        }
        .ignoresSafeArea(.all)
    }
}

#Preview {
    RecordMainView()
}
