//
//  ActivityModel+CoreDataProperties.swift
//  SwiftUI_CoreData_24
//
//  Created by Igor Polousov on 26.08.2024.
//
//

import Foundation
import CoreData


extension ActivityModel {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ActivityModel> {
        return NSFetchRequest<ActivityModel>(entityName: "ActivityModel")
    }

    @NSManaged public var title: String?
    @NSManaged public var subtitle: String?
    @NSManaged public var id: UUID?
    @NSManaged public var activityType: Int32
    @NSManaged public var dayModel: DayModel?

}

extension ActivityModel : Identifiable {

}
