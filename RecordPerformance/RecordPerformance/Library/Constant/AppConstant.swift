//
//  AppConstant.swift
//  RecordPerformance
//
//  Created by DoHyoung Kim on 10/4/24.
//

import Foundation

enum releaseType {
    case debug
    case staging
    case release
}

class AppConstant {
    var appType: releaseType = .debug
}
