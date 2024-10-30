//
//  BasicTextField.swift
//  RecordPerformance
//
//  Created by DoHyoung Kim on 10/29/24.
//

import SwiftUI

struct BasicTextField: View {
    var keyType: UIKeyboardType = .default
    var returnKeyType: SubmitLabel = .done
    var placeHolder: String
    @Binding var text: String
    var returnHandler: () -> Void
    
    var body: some View {
        ZStack {
            TextField("", text: $text)
                .keyboardType(keyType)
                .submitLabel(returnKeyType)
                .onSubmit {
                    returnHandler()
                }
                .padding(.horizontal, 16)
            
            if text.isEmpty {
                HStack {
                    Text(placeHolder)
                        .foregroundStyle(Color.onSurfaceLowest)
                        .font(.system(size: body1, weight: .regular))
                        
                    Spacer()
                }
                .padding(.horizontal, 16)
            }
        }
        .frame(height: 48)
        .background(content: {
            Color.surfaceContainer
        })
        .cornerRadius(radiusSm)
        .roundedCornerWithBorder(lineWidth: 1, borderColor: Color.outlineVariantLow, radius: radiusSm, corners: .allCorners)
    }
}

#Preview {
    BasicTextField(placeHolder: "test", text: .constant("")) {
        
    }
}
