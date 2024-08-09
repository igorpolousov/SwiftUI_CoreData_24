//
//  Theme.swift
//  SwiftUI_CoreData_24
//
//  Created by Igor Polousov on 09.08.2024.
//

import UIKit
import SwiftUI

// Colors and fonts through shared class
final class Theme {
    // Colors - make force unwrap and check are your colors really available
    static let accentColor = UIColor(named: "Accent")!
    static let tintColor = UIColor(named: "Tint")!
    static let backgroundColor = UIColor(named: "Background")!
    static let swipeEditColor = UIColor(named: "SwipeEdit")!
    
    // fonts
    static let mainFont = UIFont(name: "Lobster-Regular", size: 32)
    static let readFont = UIFont(name: "Bitter-regular", size: 18)
    static let activityFont = UIFont(name: "Oswald-Regular",size: 16)
    static let dayFont = UIFont(name: "Bitter-Bold", size: 16)
    static let plusButtomFont = UIFont(name: "Bitter-regular", size: 50)
    static let backButtonFont = UIFont(name: "Bitter-regular", size: 40)
}

extension Font {
    public static let mainFont: Font = Font.custom("Lobster-Regular", size: 32)
    public static let readFont: Font = Font.custom("Bitter-regular", size: 18)
    public static let activityFont: Font = Font.custom("Oswald-Regular", size: 16)
    public static let dayFont: Font = Font.custom("Bitter-Bold", size: 16)
    public static let plusButtonFont: Font = Font.custom("Bitter-regular", size: 50)
    public static let backButtonFont: Font = Font.custom("Bitter-regular", size: 40)
    
}


// Add colors through Color struct extension
extension Color {
    public static let themeTint: Color = Color("Tint")
    public static let themeAccent: Color = Color("Accent")
    public static let themeBackground: Color = Color("Background")
    public static let themeSwipeEdit: Color = Color("SwipeEdit")
}

// Apple recomendation for adding colors when use Dark theme
// MARK: TODO подобрать и добавить цветовые схемы для Dark theme
/*
 Пример использования от Apple
 enum Theme: String, CaseIterable, Identifiable, Codable {
     case bubblegum
     case buttercup
     case indigo
     case lavender
     case magenta
     case navy
     case orange
     case oxblood
     case periwinkle
     case poppy
     case purple
     case seafoam
     case sky
     case tan
     case teal
     case yellow
     
     var accentColor: Color {
         switch self {
         case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow: return .black
         case .indigo, .magenta, .navy, .oxblood, .purple: return .white
         }
     }
     
     var mainColor: Color {
         Color(self.rawValue)
     }
     var name: String {
         rawValue.capitalized
     }
     
     var id: String {
         name
     }
     
 }

 */
