//
//  Constant.swift
//  RecordPerformance
//
//  Created by DoHyoung Kim on 10/4/24.
//

import Foundation

class Constant {
    static var shared = Constant()
    
    let net = NetworkConstant()
    let app = AppConstant()
    let user = UserConstant()
}

//Font size
let headLine1: CGFloat = 28
let title1: CGFloat = 24
let title2: CGFloat = 22
let body1: CGFloat = 16
let body2: CGFloat = 14
let body3: CGFloat = 12
let caption2: CGFloat = 11

//Radius size
let radiusXl: CGFloat = 2
let radiusLg: CGFloat = 4
let radiusMd: CGFloat = 8
let radiusSm: CGFloat = 12
let radiusXs: CGFloat = 16
let radius2Xs: CGFloat = 24
