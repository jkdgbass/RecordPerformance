//
//  NavigationView.swift
//  RecordPerformance
//
//  Created by DoHyoung Kim on 10/18/24.
//

import SwiftUI

struct NavigationView: View {
    var name: String
    
    var body: some View {
        HStack(spacing: 0) {
            Text(name)
                .foregroundStyle(Color.white)
                .font(.system(size: title1, weight: .medium))
        }
        .frame(height: 56)
    }
}

#Preview {
    NavigationView(name: "Record")
}
