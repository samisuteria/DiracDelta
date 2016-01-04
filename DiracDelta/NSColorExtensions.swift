//
//  NSColorExtensions.swift
//
//  Created by Mihails Tumkins on 10/02/15.
//
// https://github.com/mihailt/Swift-Flat-UI-Colors

import Cocoa

extension NSColor {
    convenience init(r: Int, g:Int , b:Int) {
        self.init(red: CGFloat(r)/255, green: CGFloat(g)/255, blue: CGFloat(b)/255, alpha: 1.0)
    }
    
    class func turquoiseColor()->NSColor {
        return NSColor(r: 26, g: 188, b: 156)
    }
    
    class func greenSeaColor()->NSColor {
        return NSColor(r: 22, g: 160, b: 133)
    }
    
    class func emeraldColor()->NSColor {
        return NSColor(r: 46, g: 204, b: 113)
    }
    
    class func nephritisColor()->NSColor {
        return NSColor(r: 39, g: 174, b: 96)
    }
    
    class func peterRiverColor()->NSColor {
        return NSColor(r: 52, g: 152, b: 219)
    }
    
    class func belizeHoleColor()->NSColor {
        return NSColor(r: 41, g: 128, b: 185)
    }
    
    class func amethystColor()->NSColor {
        return NSColor(r:155, g:89, b:182)
    }
    
    class func wisteriaColor()->NSColor {
        return NSColor(r:142, g:68, b:173)
    }
    
    class func wetAsphaltColor()->NSColor {
        return NSColor(r:52, g:73, b:94)
    }
    
    class func midnightBlueColor()->NSColor {
        return NSColor(r:44, g:62, b:80)
    }
    
    class func sunflowerColor()->NSColor {
        return NSColor(r:241, g:196, b:15)
    }
    
    class func carrotColor()->NSColor {
        return NSColor(r:230, g:126, b:34)
    }
    
    class func pumpkinColor()->NSColor {
        return NSColor(r:211, g:84, b:0)
    }
    
    class func alizarinColor()->NSColor {
        return NSColor(r:231, g:76, b:60)
    }
    
    class func pomergranateColor()->NSColor {
        return NSColor(r:192, g:57, b:43)
    }
    
    class func cloudsColor()->NSColor {
        return NSColor(r:236, g:240, b:241)
    }
    
    class func silverColor()->NSColor {
        return NSColor(r:189, g:195, b:199)
    }
    
    class func concreteColor()->NSColor {
        return NSColor(r:149, g:165, b:166)
    }
    
    class func asbestosColor()->NSColor {
        return NSColor(r:127, g:140, b:141)
    }
}
