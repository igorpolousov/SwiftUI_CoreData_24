//
//  SwiftUI_CoreData_24App.swift
//  SwiftUI_CoreData_24
//
//  Created by Igor Polousov on 09.08.2024.
//

import SwiftUI

@main
struct SwiftUI_CoreData_24App: App {
    
    // Adding CoreData Stack
    let coreDataStack = CoreDataStack(modelName: "SwiftUI_CoreData_24")
    
    var body: some Scene {
        WindowGroup {
            TripView()
        }
    }
}
