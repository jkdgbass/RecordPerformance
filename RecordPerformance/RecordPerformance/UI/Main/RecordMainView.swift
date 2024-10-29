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
        ZStack(alignment: .bottomTrailing) {
            VStack(spacing: 0) {
                NavigationView(name: "Record")
                    .padding(.top, UIScreen.topSafeArea)
                
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
            
            Button {
                
            } label: {
                RoundedRectangle(cornerRadius: radiusSm)
                    .overlay(content: {
                        Image("ico_charge")
                    })
                    .foregroundStyle(Color.surfaceBright)
                    .frame(width: 48, height: 48)
            }
            .padding(.trailing, 16)
            .padding(.bottom, 16)

        }
        .ignoresSafeArea(.all)
    }
}

#Preview {
    RecordMainView()
}
