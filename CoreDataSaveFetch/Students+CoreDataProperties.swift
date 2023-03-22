//
//  Students+CoreDataProperties.swift
//  CoreDataSaveFetch
//
//  Created by Rabin on 21/03/23.
//
//

import Foundation
import CoreData


extension Students {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Students> {
        return NSFetchRequest<Students>(entityName: "Students")
    }

    @NSManaged public var name: String?
    @NSManaged public var subject: String?

}

extension Students : Identifiable {

}
