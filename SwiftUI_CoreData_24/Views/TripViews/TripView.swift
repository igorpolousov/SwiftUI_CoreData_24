//
//  TripView.swift
//  SwiftUI_CoreData_24
//
//  Created by Igor Polousov on 26.08.2024.
//

import SwiftUI

struct TripView: View {
    
    @State private var isShowingAddTripView = false
    @State var tripIndexToEdit: Int?
    @EnvironmentObject var coreDataStack: CoreDataStack
    
    var body: some View {
        ZStack {
            NavigationView {
                ZStack {
                    // List of trips
                    List {
                        ForEach(TripsData.trips) {trip in
                            let tripIndex = TripsData.trips.firstIndex(of: trip)
                            
                        }
                    }
                    .listStyle(.grouped)
                    .scrollContentBackground(.hidden)
                    .background(Color.themeBackground)
                }
            }
        }
    }
}

#Preview {
    TripView()
}
