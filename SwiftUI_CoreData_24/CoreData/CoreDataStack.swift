//
//  CoreDataStack.swift
//  SwiftUI_CoreData_24
//
//  Created by Igor Polousov on 26.08.2024.
//

import Foundation
import CoreData

// Нужен ли здесь ObservalbeObject??
class CoreDataStack: ObservableObject {
    // CoreData model name
    private let modelName: String
    
    init(modelName: String) {
        self.modelName = modelName
    }
    
    // Load stores with model name
    private lazy var storeContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: modelName)
        container.loadPersistentStores { storeDescription, error in
            if let error = error as NSError? {
                print("ERROR TO LOAD STORES \(error), \(error.localizedDescription)")
            }
        }
        return container
    }()
    
    // Managed context
    lazy var managedContext: NSManagedObjectContext = {
        return self.storeContainer.viewContext
    }()
    
    // Save func for saving changes in context
    func saveContext() {
        guard managedContext.hasChanges else { return }
        do {
            try managedContext.save()
        } catch let error as NSError {
            print("CAN'T SAVE CONTEXT\(error), \(error.localizedDescription)")
        }
    }
}
