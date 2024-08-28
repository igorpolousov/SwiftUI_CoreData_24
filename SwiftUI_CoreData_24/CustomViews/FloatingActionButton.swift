//
//  FloatingActionButton.swift
//  SwiftUI_CoreData_24
//
//  Created by Igor Polousov on 28.08.2024.
//

import SwiftUI

struct FloatingActionButton: View {
    
    @State var isShowingAddTripView = false
    
    var body: some View {
        VStack {
            Button(action: {
                withAnimation(.easeInOut(duration: 0.25)) {
                    isShowingAddTripView.toggle()
                }
            }, label: {
                Text("+")
                    .modifier(PlusButtonModifier())
             
            })
            .frame(width: 60, height: 60)
            .padding(.trailing, 10)
        }
    }
}

#Preview {
    FloatingActionButton()
}
