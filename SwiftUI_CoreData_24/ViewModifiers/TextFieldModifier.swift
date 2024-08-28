//
//  TextFieldModifier.swift
//  SwiftUI_CoreData_24
//
//  Created by Igor Polousov on 28.08.2024.
//

import SwiftUI

struct TextFieldModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .frame(height: 40)
            .frame(maxWidth: .infinity)
            .background(RoundedRectangle(cornerRadius: 5).foregroundColor(Color.white))
            .padding(.leading, 30)
            .padding(.trailing, 30)
    }
    
}
