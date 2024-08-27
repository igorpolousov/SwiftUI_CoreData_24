//
//  TripsData.swift
//  SwiftUI_CoreData_24
//
//  Created by Igor Polousov on 26.08.2024.
//

import Foundation

actor TripsData: ObservableObject {
    
    @Published var tripsData: [TripModel] = []
}
