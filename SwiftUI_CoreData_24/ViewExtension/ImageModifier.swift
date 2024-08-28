//
//  ImageModifier.swift
//  SwiftUI_CoreData_24
//
//  Created by Igor Polousov on 28.08.2024.
//

import SwiftUI

extension Image {
    
    func imageModifier() -> some View {
        self
            .resizable()
            .aspectRatio(contentMode: .fill)
            .clipped()
    }
    
    func applyCameraImage() -> some View {
        self
            .tint(Color.themeTint)
            .frame(width: 50, height: 50)
    }
}

