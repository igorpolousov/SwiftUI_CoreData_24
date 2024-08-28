//
//  TripListRow.swift
//  SwiftUI_CoreData_24
//
//  Created by Igor Polousov on 28.08.2024.
//

import SwiftUI

struct TripListRow: View {
    var title: String
    var imageData: Data?
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(Color.themeAccent)
                .frame(height: 160)
            
            if let imageData {
                if let imageToShow = UIImage(data: imageData) {
                    Image(uiImage: imageToShow)
                        .imageModifier()
                        //.resizable()
                        //.aspectRatio(contentMode: .fill)
                        .frame(height: 160)
                        .cornerRadius(10)
                        //.clipped()
                }
            }
            
            Text(title)
                .font(Font.mainFont)
                .foregroundStyle(Color.white)
                .shadow(color: .black, radius: 10, x: 2, y: 2)
        }
        .shadow(color: .black, radius: 5, x: 3, y: 3)
    }
}

#Preview {
    TripListRow(title: "Hello trip")
}
