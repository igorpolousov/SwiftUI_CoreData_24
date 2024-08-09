//
//  ContentView.swift
//  SwiftUI_CoreData_24
//
//  Created by Igor Polousov on 09.08.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(Color.themeBackground)
            Text("Hello, world!")
                .font(.mainFont)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
