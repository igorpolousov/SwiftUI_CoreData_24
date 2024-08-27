//
//  TripFunctions.swift
//  SwiftUI_CoreData_24
//
//  Created by Igor Polousov on 27.08.2024.
//

import UIKit
import CoreData

class TripFunctions {
    
    // Create trip (убран completion handler) Как лучше харинть картинки: as Data in coreData or as String in CoreData and images in files
    static func createTrip(tripModelTitle: String, tripModelImage: UIImage? = nil, coreDataStack: CoreDataStack) {
        let tripModel = TripModel(context: coreDataStack.managedContext)
        tripModel.title = tripModelTitle
        tripModel.image = tripModelImage?.pngData()
        tripModel.id = UUID()
        TripsData.trips.append(tripModel)
        coreDataStack.saveContext()
        
    }
    
    // Read trip from core data ( убран completion handler -> использовать во view TripsData.trips напрямую
    static func readTreaps(coreDataStack: CoreDataStack) {
        let fetchRequest: NSFetchRequest<TripModel> = TripModel.fetchRequest()
        var asyncFetchRequest: NSAsynchronousFetchRequest<TripModel>?
        asyncFetchRequest = NSAsynchronousFetchRequest<TripModel>(fetchRequest: fetchRequest) {
            (result: NSAsynchronousFetchResult) in
            guard let tripsData = result.finalResult else {return}
            TripsData.trips = tripsData
        }
        
        do {
            guard let asyncFetchRequest = asyncFetchRequest else {return}
            print("ASYNC fetch request \(Thread.current)")
            try coreDataStack.managedContext.execute(asyncFetchRequest)
        } catch let error as NSError{
            print("Unable to load data")
        }
    }
    
    // Update trip
    static func updateTrip(at index: Int, title: String, tripModelImage: UIImage? = nil, coreDataStack: CoreDataStack) {
        TripsData.trips[index].title = title
        TripsData.trips[index].image = tripModelImage?.pngData()
        coreDataStack.saveContext()
    }
    
    // Delete trip
    static func deleteTrip(index: Int, coreDataStack: CoreDataStack) {
        let tripToRemove = TripsData.trips[index]
        coreDataStack.managedContext.delete(tripToRemove)
        coreDataStack.saveContext()
        TripsData.trips.remove(at: index)
    }
    
    //get trip data by trip ID
    
    
}
