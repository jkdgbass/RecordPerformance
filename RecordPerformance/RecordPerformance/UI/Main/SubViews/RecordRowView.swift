//
//  RecordRowView.swift
//  RecordPerformance
//
//  Created by DoHyoung Kim on 10/25/24.
//

import SwiftUI

struct RecordRowView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("10월 22일 금요일")
                .foregroundStyle(Color.onSurfaceLow)
                .font(.system(size: body2, weight: .regular))
                .padding(.vertical, 8)
            
            HStack(spacing: 0) {
                Color.primary
                    .frame(width: 2, height: 19)
                    .cornerRadius(radius2Xs, corners: [.topRight, .bottomRight])
                    .padding(.trailing, 8)
                
                Text("야구")
                    .foregroundStyle(Color.onSurfaceBright)
                    .font(.system(size: body1, weight: .regular))
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image("btn_gray_more")
                }
            }
            .padding(.leading, 24)
            
            HStack(spacing: 0) {
                VStack(alignment: .leading, spacing: 0) {
                    HStack(spacing: 4) {
                        Image("ico_kcal")
                        
                        Text("칼로리")
                            .foregroundStyle(Color.onSurfaceLow)
                            .font(.system(size: body2, weight: .regular))
                        
                    }
                    
                    HStack(alignment: .bottom, spacing: 2) {
                        Text("2,270")
                            .foregroundStyle(Color.onSurfaceBright)
                            .font(.system(size: headLine1, weight: .medium))
                        
                        Text("kcal")
                            .foregroundStyle(Color.onSurfaceLowest)
                            .font(.system(size: body1, weight: .regular))
                    }
                }
                .padding(.vertical, 16)
                .padding(.leading, 16)
                
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 0) {
                    HStack(spacing: 4) {
                        Image("ico_time")
                        
                        Text("시간")
                            .foregroundStyle(Color.onSurfaceLow)
                            .font(.system(size: body2, weight: .regular))
                        
                    }
                    
                    HStack(alignment: .bottom, spacing: 0) {
                        Text("3")
                            .foregroundStyle(Color.onSurfaceBright)
                            .font(.system(size: headLine1, weight: .medium))
                            .padding(.trailing, 2)
                        
                        Text("h")
                            .foregroundStyle(Color.onSurfaceLowest)
                            .font(.system(size: body1, weight: .regular))
                        
                        Text("50")
                            .foregroundStyle(Color.onSurfaceBright)
                            .font(.system(size: headLine1, weight: .medium))
                            .padding(.trailing, 2)
                        
                        Text("m")
                            .foregroundStyle(Color.onSurfaceLowest)
                            .font(.system(size: body1, weight: .regular))
                    }
                }
                .padding(.vertical, 16)
                .padding(.trailing, 16)
                
                Spacer()
            }
            .background {
                Color.surfaceContainer
            }
            .clipShape(RoundedRectangle(cornerRadius: radiusLg))
            .padding(.leading, 24)
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    RecordRowView()
}
