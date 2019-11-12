//
//  ColorExtension.swift
//  PuppyPatisserie
//
//  Created by Madison Kaori Shino on 11/7/19.
//  Copyright © 2019 Madi S. All rights reserved.
//

import Foundation
import UIKit

let gray = hexStringToUIColor(hex: "#30333A")
let orange = hexStringToUIColor(hex: "#E06641")
let pink = hexStringToUIColor(hex: "#F298AB")
let white = hexStringToUIColor(hex: "#F6EEDA")
let taupe = hexStringToUIColor(hex: "#F0D0C1")
let offWhite = hexStringToUIColor(hex: "#FAF2E1")

public func hexStringToUIColor (hex:String) -> UIColor {
    var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
    
    if (cString.hasPrefix("#")) {
        cString.remove(at: cString.startIndex)
    }
    
    if ((cString.count) != 6) {
        return UIColor.gray
    }
    
    var rgbValue:UInt64 = 0
    Scanner(string: cString).scanHexInt64(&rgbValue)
    
    return UIColor(
        red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
        alpha: CGFloat(1.0)
    )
}

