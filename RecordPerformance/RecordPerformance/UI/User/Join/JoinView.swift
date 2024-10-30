//
//  JoinView.swift
//  RecordPerformance
//
//  Created by DoHyoung Kim on 10/29/24.
//

import SwiftUI

struct JoinView: View {
    @State private var keyboardHeight: CGFloat = 0
    @StateObject private var model = JoinViewModel()
    
    var body: some View {
        VStack(spacing: 0) {
            BackNavigationView {
                
            }
            .padding(.top, UIScreen.topSafeArea)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("환영합니다.")
                    .foregroundStyle(Color.onSurfaceBright)
                    .font(.system(size: headLine1, weight: .regular))
                
                Text("Record Performance에서 사용할 회원님의\n간단한 정보를 등록해주세요.")
                    .foregroundStyle(Color.onSurfaceLow)
                    .font(.system(size: body1, weight: .regular))
            }
            .frame(maxWidth: .infinity)
            .padding(.bottom, 72)
            .padding(.horizontal, 16)
            
            VStack(alignment: .leading, spacing: 0) {
                Text("이메일")
                    .foregroundStyle(Color.onSurfaceLowest)
                    .font(.system(size: body2, weight: .regular))
                    .padding(.bottom, 8)
                    .padding(.horizontal, 8)
                
                BasicTextField(keyType: .emailAddress, returnKeyType: .next, placeHolder: "ex) Record-performance@gmail.com", text: $model.email, returnHandler: {
                    
                })
                    .padding(.bottom, 24)
                
                Text("닉네임")
                    .foregroundStyle(Color.onSurfaceLowest)
                    .font(.system(size: body2, weight: .regular))
                    .padding(.bottom, 8)
                    .padding(.horizontal, 8)
                
                BasicTextField(keyType: .default, returnKeyType: .done, placeHolder: "ex) 레코드 퍼포먼스", text: $model.nickName, returnHandler: {
                    
                })
                    .padding(.bottom, 24)
                
                Text("성별")
                    .foregroundStyle(Color.onSurfaceLowest)
                    .font(.system(size: body2, weight: .regular))
                    .padding(.bottom, 8)
                    .padding(.horizontal, 8)
                
                HStack(spacing: 8) {
                    Button {
                        model.gender = 0
                    } label: {
                        Text("없음")
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .background(content: {
                                model.gender == 0 ? Color.onPrimaryContainerLowest : Color.onWhite
                            })
                            .foregroundStyle(model.gender == 0 ? Color.primaryContainerLowest : Color.onSurfaceBright)
                            .font(.system(size: body1, weight: .bold))
                            .cornerRadius(radiusSm)
                            .roundedCornerWithBorder(lineWidth: 1, borderColor: model.gender == 0 ? Color.outlinePrimaryVariant : Color.outline,
                                                     radius: radiusSm, corners: .allCorners)
                    }

                    Button {
                        model.gender = 1
                    } label: {
                        Text("남")
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .background(content: {
                                model.gender == 1 ? Color.onPrimaryContainerLowest : Color.onWhite
                            })
                            .foregroundStyle(model.gender == 1 ? Color.primaryContainerLowest : Color.onSurfaceBright)
                            .font(.system(size: body1, weight: .bold))
                            .cornerRadius(radiusSm)
                            .roundedCornerWithBorder(lineWidth: 1, borderColor: model.gender == 1 ? Color.outlinePrimaryVariant : Color.outline,
                                                     radius: radiusSm, corners: .allCorners)
                    }
                    
                    Button {
                        model.gender = 2
                    } label: {
                        Text("여")
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                            .background(content: {
                                model.gender == 2 ? Color.onPrimaryContainerLowest : Color.onWhite
                            })
                            .foregroundStyle(model.gender == 2 ? Color.primaryContainerLowest : Color.onSurfaceBright)
                            .font(.system(size: body1, weight: .bold))
                            .cornerRadius(radiusSm)
                            .roundedCornerWithBorder(lineWidth: 1, borderColor: model.gender == 2 ? Color.outlinePrimaryVariant : Color.outline,
                                                     radius: radiusSm, corners: .allCorners)
                    }
                }
                .frame(height: 48)
                .padding(.bottom, 8)
                
                Color.outlineVariantLow
                    .frame(height: 1)
                    .padding(.vertical, 32)
            }
            .padding(.horizontal, 16)
            
            HStack(spacing: 0) {
                HStack(spacing: 0) {
                    
                    Text("회원 가입 약관에 동의합니다.")
                        .foregroundStyle(Color.onSurfaceBright)
                        .font(.system(size: body1, weight: .regular))
                    
                    Spacer()
                }
                .padding(.leading, 8)
                
                Button {
                    
                } label: {
                    Image("btn_gray_next")
                }
                .frame(width: 24, height: 24)
                .padding(.trailing, 8)
            }
            .padding(.horizontal, 16)
            
            Spacer()
            
            Button {
                model.joinAction()
            } label: {
                Text("회원가입")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background {
                        RoundedRectangle(cornerRadius: radiusSm)
                            .foregroundStyle(Color.primary)
                    }
                    .foregroundStyle(Color.onPrimary)
                    .font(.system(size: body1, weight: .semibold))
            }
            .frame(height: 48)
            .padding(.horizontal, 16)
            .padding(.bottom, UIScreen.bottomSafeArea)
        }
        .ignoresSafeArea(.all)
        .keyboardHeight($keyboardHeight)
        .animation(.easeInOut(duration: 0.16))
    }
}

#Preview {
    JoinView()
}
