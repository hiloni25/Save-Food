//
//  DonorDetails+CoreDataProperties.swift
//  Save food
//
//  Created by Hiloni Mehta on 11/05/18.
//  Copyright © 2018 Hiloni Mehta. All rights reserved.
//
//

import Foundation
import CoreData


extension DonorDetails {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<DonorDetails> {
        return NSFetchRequest<DonorDetails>(entityName: "DonorDetails")
    }

    @NSManaged public var password1: String?
    @NSManaged public var username1: String?

}
