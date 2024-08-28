//
//  AddTripViewModifier.swift
//  SwiftUI_CoreData_24
//
//  Created by Igor Polousov on 28.08.2024.
//

import SwiftUI

struct AddTripViewModifier: ViewModifier {
    
    let heigt: CGFloat?
    let bottomPadding: CGFloat?
    
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity)
            .frame(height: heigt)
            .padding(.bottom, bottomPadding)
            .padding(.leading, 20)
            .padding(.trailing, 20)
            .shadow(color: Color.black, radius: 10, x: 3, y: 3)
    }
}
