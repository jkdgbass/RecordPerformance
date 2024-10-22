//
//  NetworkManager.swift
//  RecordPerformance
//
//  Created by DoHyoung Kim on 10/4/24.
//

import Foundation
import Alamofire


class NetworkManager {
    static func get(path: getAPI, parameter: String,  handler: @escaping () -> Void) {
        guard let targetUrl = URL(string: Constant.shared.net.host + path.rawValue) else {
            handler()
            
            return
        }
        
        request(targetURL: targetUrl, method: .get, handler: handler)
    }
    
    static func post() {
        
    }
    
    static func patch() {
        
    }
    
    static func delete() {
        
    }
    
    private static func request(targetURL: URL, method: HTTPMethod, handler: @escaping () -> Void) {
        AF.request(targetURL, method: .get)
            .responseJSON { response in
                switch response.result {
                case .success(let result):
                    
                    break
                case .failure(let result):
                    break
                }
            }
    }
    
}


