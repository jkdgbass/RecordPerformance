//
//  UIScreen_Extensions.swift
//  RecordPerformance
//
//  Created by DoHyoung Kim on 10/29/24.
//

import Foundation
import UIKit

extension UIScreen {
    
    static private var keyWindow: UIWindow? {
        let keyWindow = UIApplication.shared.connectedScenes
                    .filter({$0.activationState == .foregroundActive})
                    .map({$0 as? UIWindowScene})
                    .compactMap({$0})
                    .first?.windows
                    .filter({$0.isKeyWindow}).first
        
        return keyWindow
    }
    
    static var topSafeArea: CGFloat {
        return (keyWindow?.safeAreaInsets.top) ?? 0
    }
    
    static var bottomSafeArea: CGFloat {
        return (keyWindow?.safeAreaInsets.bottom) ?? 0
    }
    
}
