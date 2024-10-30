//
//  BackNavigationView.swift
//  RecordPerformance
//
//  Created by DoHyoung Kim on 10/29/24.
//

import SwiftUI

struct BackNavigationView: View {
    var handler: () -> Void
    
    var body: some View {
        HStack {
            Button {
                handler()
            } label: {
                Image("btn_back_arrow")
            }
            .frame(width: 36, height: 36)
            .padding(.leading, 8)
            
            Spacer()
            
            
        }
        .frame(height: 56)
    }
}

#Preview {
    BackNavigationView {
        
    }
}
