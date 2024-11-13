//
//  NetworkManager.swift
//  RecordPerformance
//
//  Created by DoHyoung Kim on 10/4/24.
//

import Foundation
import Alamofire


class NetworkManager {
    static func get<T: Codable>(path: getAPI, parameter: String,  handler: @escaping (_ result: Bool, _ response: T?, _ error: ErrorModel?) -> Void) {
        guard let targetUrl = URL(string: Constant.shared.net.host + path.rawValue) else {
            handler(false, nil, nil)
            return
        }
        
        request(targetURL: targetUrl, method: .get, handler: handler)
    }
    
    static func post<T: Codable>(path: getAPI, parameter: String,  handler: @escaping (_ result: Bool, _ response: T?, _ error: ErrorModel?) -> Void) {
        guard let targetUrl = URL(string: Constant.shared.net.host + path.rawValue) else {
            handler(false, nil, nil)
            return
        }
        
        request(targetURL: targetUrl, method: .get, handler: handler)
    }
    
    static func patch<T: Codable>(path: getAPI, parameter: String,  handler: @escaping (_ result: Bool, _ response: T?, _ error: ErrorModel?) -> Void) {
        guard let targetUrl = URL(string: Constant.shared.net.host + path.rawValue) else {
            handler(false, nil, nil)
            return
        }
        
        request(targetURL: targetUrl, method: .get, handler: handler)
    }
    
    static func delete<T: Codable>(path: getAPI, parameter: String, response: T,  handler: @escaping (_ result: Bool, _ response: T?, _ error: ErrorModel?) -> Void) {
        guard let targetUrl = URL(string: Constant.shared.net.host + path.rawValue) else {
            handler(false, nil, nil)
            return
        }
        
        request(targetURL: targetUrl, method: .get, handler: handler)
    }
    
    private static func request<T: Codable>(targetURL: URL, method: HTTPMethod, handler: @escaping (_ result: Bool, _ response: T?, _ error: ErrorModel?) -> Void) {
        AF.request(targetURL, method: method)
            .responseJSON(completionHandler: { response in
                switch response.result {
                case .success(let result):
                    handler(true, result as? T, nil)
                    break
                case .failure(let result):
                    break
                }
            })
    }
    
}


