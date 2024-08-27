//
//  TripsData.swift
//  SwiftUI_CoreData_24
//
//  Created by Igor Polousov on 26.08.2024.
//

import Foundation

/* 
 - Нужно ли вообще создавать SingleTone, private init ? Если не планируется создавать объект(делать инициалищацию)
 - Если случайно будет проинициализирован объект, то изменения в этом объекте будут делать изменения в безобъектном хранилище?
 - Как вообще хранятся данные если не инициализируешь сlass а только используещь static property?
*/

actor TripsData {
    static var trips: [TripModel] = []
}



