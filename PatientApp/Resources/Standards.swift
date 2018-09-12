//
//  Standards.swift
//  PatientApp
//
//  Created by Practica on 8/30/18.
//  Copyright © 2018 Practica. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    convenience init(hexString: String, alpha: CGFloat = 1.0) {
        let hexString: String = hexString.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let scanner = Scanner(string: hexString)
        if (hexString.hasPrefix("#")) {
            scanner.scanLocation = 1
        }
        var color: UInt32 = 0
        scanner.scanHexInt32(&color)
        let mask = 0x000000FF
        let r = Int(color >> 16) & mask
        let g = Int(color >> 8) & mask
        let b = Int(color) & mask
        let red   = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue  = CGFloat(b) / 255.0
        self.init(red:red, green:green, blue:blue, alpha:alpha)
    }
    func toHexString() -> String {
        var r:CGFloat = 0
        var g:CGFloat = 0
        var b:CGFloat = 0
        var a:CGFloat = 0
        getRed(&r, green: &g, blue: &b, alpha: &a)
        let rgb:Int = (Int)(r*255)<<16 | (Int)(g*255)<<8 | (Int)(b*255)<<0
        return String(format:"#%06x", rgb)
    }
}

//MARK: Fonts
let TableHeaderFont = UIFont(name: "HelveticaNeue-Medium", size: 14.0)
let MediumRegularFont = UIFont.systemFont(ofSize: 15)
let SmallRegularFont = UIFont.systemFont(ofSize: 13)


//MARK: - Background Colors
let BackgroundSecondaryColor = UIColor(hexString: "#F1F1F1")
let BackgroundDisabledColor = UIColor(hexString: "#D1D1D1")
let BackgroundBlueColor = UIColor(hexString: "#2795E9")
let SeparatorColor = UIColor(hexString: "#C3C7CA")
let SeparatorLineColor = UIColor(hexString: "#E4E4E4")
let BackgroundControlBarColor = UIColor(hexString: "#EAEAEA")
let NavPrimaryColor = UIColor(hexString: "#48545D")
let ThemeOverlayColor = UIColor(red: 0.3, green: 0.3, blue: 0.3, alpha: 0.4)
let BackgroundLightGray = UIColor(hexString: "#EAEAEA")
let DisabledCell = UIColor(hexString: "#F3F3F3")
let DisabledMenuButtonsBG = UIColor(hexString: "#F4F4F4")

//MARK: - Cell Size
let TableCellHeight = CGFloat(44)
let TableHeaderHeight = CGFloat(44)
