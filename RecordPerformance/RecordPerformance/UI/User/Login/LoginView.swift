//
//  LoginView.swift
//  RecordPerformance
//
//  Created by DoHyoung Kim on 10/18/24.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            Image("img_big_logo")
            
            Spacer()
            
            Button {
                
            } label: {
                ZStack {
                    HStack(spacing: 0) {
                        Image("logo-apple")
                        
                        Spacer()
                    }
                    .padding(.horizontal, 16)
                    
                    Text("Apple 로그인")
                        .foregroundStyle(Color.white)
                        .font(.system(size: body1, weight: .regular))
                }
            }
            .frame(height: 48)
            .overlay(content: {
                RoundedRectangle(cornerRadius: radiusSm)
                    .inset(by: -0.5)
                    .stroke(Color.white, lineWidth: 1)
            })
            .padding(.bottom, 24)
            .padding(.horizontal, 48)
            
            Button {
                
            } label: {
                ZStack {
                    HStack(spacing: 0) {
                        Image("logo-kakao")
                        
                        Spacer()
                    }
                    .padding(.horizontal, 16)
                    
                    Text("Kakao 로그인")
                        .foregroundStyle(Color.white)
                        .font(.system(size: body1, weight: .regular))
                }
            }
            .frame(height: 48)
            .background {
                Color(red: 250.0/255.0, green: 225.0/255.0, blue: 0)
            }
            .clipShape(RoundedRectangle(cornerRadius: radiusSm))
            .padding(.bottom, 24)
            .padding(.horizontal, 48)
            
            Button {
                
            } label: {
                ZStack {
                    HStack(spacing: 0) {
                        Image("logo-naver")
                        
                        Spacer()
                    }
                    .padding(.horizontal, 16)
                    
                    Text("Naver 로그인")
                        .foregroundStyle(Color.white)
                        .font(.system(size: body1, weight: .regular))
                }
            }
            .frame(height: 48)
            .background {
                Color(red: 0, green: 199.0/255.0, blue: 60.0/255.0)
            }
            .clipShape(RoundedRectangle(cornerRadius: radiusSm))
            .padding(.horizontal, 48)
            
            Spacer()
        }
        .ignoresSafeArea(.all)
        .background {
            Color.black
        }
    }
}

#Preview {
    LoginView()
}
