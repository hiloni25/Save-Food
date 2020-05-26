//
//  VounteerDetails+CoreDataProperties.swift
//  Save food
//
//  Created by Hiloni Mehta on 11/05/18.
//  Copyright © 2018 Hiloni Mehta. All rights reserved.
//
//

import Foundation
import CoreData


extension VounteerDetails {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<VounteerDetails> {
        return NSFetchRequest<VounteerDetails>(entityName: "VounteerDetails")
    }

    @NSManaged public var password3: String?
    @NSManaged public var username3: String?

}
