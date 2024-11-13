//
//  NetworkManager.swift
//  RecordPerformance
//
//  Created by DoHyoung Kim on 10/4/24.
//

import Foundation
import Alamofire


class NetworkManager {
    static func get<T: Decodable>(path: getAPI, parameter: String, response: T.Type, handler: @escaping (_ result: Bool, _ response: T?, _ error: ErrorModel?) -> Void) {
        guard let targetUrl = URL(string: Constant.shared.net.host + path.rawValue) else {
            handler(false, nil, nil)
            return
        }
        
        request(targetURL: targetUrl, method: .get, response: response, handler: handler)
    }
    
    static func post<T: Decodable>(path: getAPI, parameter: String, response: T.Type, handler: @escaping (_ result: Bool, _ response: T?, _ error: ErrorModel?) -> Void) {
        guard let targetUrl = URL(string: Constant.shared.net.host + path.rawValue) else {
            handler(false, nil, nil)
            return
        }
        
        request(targetURL: targetUrl, method: .post, response: response, handler: handler)
    }
    
    static func patch<T: Decodable>(path: getAPI, parameter: String, response: T.Type, handler: @escaping (_ result: Bool, _ response: T?, _ error: ErrorModel?) -> Void) {
        guard let targetUrl = URL(string: Constant.shared.net.host + path.rawValue) else {
            handler(false, nil, nil)
            return
        }
        
        request(targetURL: targetUrl, method: .patch, response: response, handler: handler)
    }
    
    static func delete<T: Decodable>(path: getAPI, parameter: String, response: T.Type, handler: @escaping (_ result: Bool, _ response: T?, _ error: ErrorModel?) -> Void) {
        guard let targetUrl = URL(string: Constant.shared.net.host + path.rawValue) else {
            handler(false, nil, nil)
            return
        }
        
        request(targetURL: targetUrl, method: .delete, response: response, handler: handler)
    }
    
    private static func request<T: Decodable>(targetURL: URL, method: HTTPMethod, response: T.Type, handler: @escaping (_ result: Bool, _ response: T?, _ error: ErrorModel?) -> Void) {
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


