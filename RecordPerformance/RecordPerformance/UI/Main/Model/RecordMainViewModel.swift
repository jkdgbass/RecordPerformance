//
//  RecordMainViewModel.swift
//  RecordPerformance
//
//  Created by DoHyoung Kim on 10/18/24.
//

import Foundation
import SwiftUI

class RecordMainViewModel: ObservableObject {
    @Published var currentDate: Date = Date()
    
    func testApi() {
        NetworkManager.get(path: .test, parameter: "", response: ErrorModel.self) { result, response, error in
            if result {
                
            }
        }
    }
}
