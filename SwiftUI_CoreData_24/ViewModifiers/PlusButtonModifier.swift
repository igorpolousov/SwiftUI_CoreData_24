//
//  PlusButtonModifier.swift
//  SwiftUI_CoreData_24
//
//  Created by Igor Polousov on 28.08.2024.
//

import SwiftUI

struct PlusButtonModifier: ViewModifier {
    
    let shadowColor = Color(UIColor.darkGray)
    let shadowRadius = 4
    
    func body(content: Content) -> some View {
        content
            .tint(Color.white)
            .clipShape(Circle())
            .frame(width: 62, height: 62)
            .aspectRatio(contentMode: .fill)
            .background(Circle().foregroundColor(Color.themeTint))
            .shadow(color: shadowColor ,radius: CGFloat(shadowRadius),x: 2, y: 2)
            .overlay(Circle().stroke(shadowColor, lineWidth: 1))
            .font(Font(Theme.plusButtomFont!))
    }
 
}
