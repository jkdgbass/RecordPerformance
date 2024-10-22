//
//  Color_Extensions.swift
//  RecordPerformance
//
//  Created by DoHyoung Kim on 10/18/24.
//

import Foundation
import SwiftUI

extension Color {
    static let primary = Color(red: 4.0/255.0, green: 205.0/255.0, blue: 255.0/255.0)
    static let primaryContainer = Color(red: 1.0/255.0, green: 97/255.0, blue: 163.0/255.0)
    static let primaryContainerLow = Color(red: 1.0/255.0, green: 74.0/255.0, blue: 140.0/255.0)
    static let primaryContainerLowest = Color(red: 0, green: 24.0/255.0, blue: 71.0/255.0)
    static let primaryContainerDeep = Color(red: 0, green: 15.0/255.0, blue: 51.0/255.0)
    static let onPrimary = Color(red: 0, green: 24.0/255.0, blue: 71.0/255.0)
    static let onPrimaryContainerLow = Color(red: 71.0/255.0, green: 227.0/255.0, blue: 255.0/255.0)
    static let onPrimaryContainerLowest = Color(red: 71.0/255.0, green: 227.0/255.0, blue: 255.0/255.0)
    
//    static let secondary = Color(red: 61.0/255.0, green: 221.0/255.0, blue: 200.0/255.0)
//    static let secondaryContainer = Color(red: 7.0/255.0, green: 52.0/255.0, blue: 66.0/255.0)
//    static let onSecondary = Color(red: 5.0/255.0, green: 39.0/255.0, blue: 54.0/255.0)
//    static let onSecondaryContainer = Color(red: 107.0/255.0, green: 234.0/255.0, blue: 206.0/255.0)
    
    static let error = Color(red: 255.0/255.0, green: 141.0/255.0, blue: 141.0/255.0)
    static let errorContainer = Color(red: 104.0/255.0, green: 2.0/255.0, blue: 6.0/255.0)
    static let onError = Color(red: 65.0/255.0, green: 0, blue: 1.0/255.0)
    static let onErrorContainer = Color(red: 255.0/255.0, green: 191.0/255.0, blue: 191.0/255.0)
    
    static let onSurfaceBright = Color(red: 244.0/255.0, green: 245.0/255.0, blue: 247.0/255.0)
    static let onSurface = Color(red: 225.0/255.0, green: 229.0/255.0, blue: 236.0/255.0)
    static let onSurfaceLow = Color(red: 154.0/255.0, green: 164.0/255.0, blue: 184.0/255.0)
    static let onSurfaceLowest = Color(red: 112.0/255.0, green: 120.0/255.0, blue: 135.0/255.0)
    
    static let surfaceDim = Color(red: 12.0/255.0, green: 13.0/255.0, blue: 14.0/255.0).opacity(0.75)
    static let surfaceBright = Color(red: 46.0/255.0, green: 52.0/255.0, blue: 56.0/255.0)
    static let surfaceContainerHighest = Color(red: 39.0/255.0, green: 44.0/255.0, blue: 48.0/255.0)
    static let surfaceContainerHigh = Color(red: 32.0/255.0, green: 36.0/255.0, blue: 39.0/255.0)
    static let surfaceContainer = Color(red: 28.0/255.0, green: 31.0/255.0, blue: 34.0/255.0)
    static let surfaceContainerLow = Color(red: 23.0/255.0, green: 26.0/255.0, blue: 28.0/255.0)
    static let surface = Color(red: 16.0/255.0, green: 18.0/255.0, blue: 19.0/255.0)
    static let surfaceContainerLowest = Color(red: 12.0/255.0, green: 13.0/255.0, blue: 14.0/255.0)
    
    static let outlinePrimary = Color(red: 4.0/255.0, green: 205.0/255.0, blue: 255.0/255.0)
    static let outlinePrimaryVariant = Color(red: 0, green: 58.0/255.0, blue: 125.0/255.0)
    static let outlinePrimaryVariantLow = Color(red: 0, green: 39.0/255.0, blue: 97.0/255.0)
    static let outline = Color.white.opacity(0.18)
    static let outlineVariant = Color.white.opacity(0.11)
    static let outlineVariantLow = Color.white.opacity(0.07)
    
    static let onWhite = Color.black.opacity(0.25)
    static let onBalck = Color.white.opacity(0.25)
}
