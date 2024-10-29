//
//  RootView.swift
//  RecordPerformance
//
//  Created by DoHyoung Kim on 10/17/24.
//

import SwiftUI

struct RootView: View {
    
    @StateObject var model = RootViewModel()
    
    var body: some View {
        VStack(spacing: 0) {
            if model.currentTabIndex == 0 {
                RecordMainView()
            } else if model.currentTabIndex == 1 {
                CommunityMainView()
            } else if model.currentTabIndex == 2 {
                MyPageMainView()
            }
            
            HStack(spacing: 0) {
                Button {
                    model.currentTabIndex = 0
                } label: {
                    VStack(spacing: 0) {
                        Image(model.currentTabIndex == 0 ? "tab_main_focused" : "tab_main_normal")
                        
                        Text("Record")
                            .foregroundStyle(model.currentTabIndex == 0 ? Color.white : Color.white)
                            .font(.system(size: caption2))
                    }
                    .frame(maxWidth: .infinity)
                }
                .padding(.vertical, 7.5)

                
                Button {
                    model.currentTabIndex = 1
                } label: {
                    VStack(spacing: 0) {
                        Image(model.currentTabIndex == 1 ? "tab_community_focused" : "tab_community_normal")
                        
                        Text("Community")
                            .foregroundStyle(model.currentTabIndex == 0 ? Color.white : Color.white)
                            .font(.system(size: caption2))
                    }
                    .frame(maxWidth: .infinity)
                }

                Button {
                    model.currentTabIndex = 2
                } label: {
                    VStack(spacing: 0) {
                        Image(model.currentTabIndex == 2 ? "tab_mypage_focused" : "tab_mypage_normal")
                        
                        Text("My Page")
                            .foregroundStyle(model.currentTabIndex == 0 ? Color.white : Color.white)
                            .font(.system(size: caption2))
                    }
                    .frame(maxWidth: .infinity)
                }
            }
            .padding(.bottom, UIScreen.bottomSafeArea)
            .background(content: {
                Color.surfaceContainerLow
            })
            .border(Color.white.opacity(0.11))
            .cornerRadius(20, corners: [.topLeft, .topRight])
        }
        .ignoresSafeArea(.all)
    }
}

#Preview {
    RootView()
}
