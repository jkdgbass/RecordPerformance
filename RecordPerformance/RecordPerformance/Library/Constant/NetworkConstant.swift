//
//  NetworkConstant.swift
//  RecordPerformance
//
//  Created by DoHyoung Kim on 10/4/24.
//

import Foundation

struct NetworkConstant {
    var host: String {
        switch Constant.shared.app.appType {
        case .debug:
            return "http://localhost:3000/"
        case .staging:
            return "http://localhost:3000/"
        case .release:
            return "http://localhost:3000/"
        }
    }
}

enum getAPI: String {
    case test = "api/nodejs-api"
}

enum postAPI: String {
    case test = "api/nodejs-api"
}

enum patchAPI: String {
    case test = ""
}

enum deleteAPI: String {
    case test = ""
}
