//
//  CharityDetails+CoreDataProperties.swift
//  Save food
//
//  Created by Hiloni Mehta on 11/05/18.
//  Copyright © 2018 Hiloni Mehta. All rights reserved.
//
//

import Foundation
import CoreData


extension CharityDetails {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CharityDetails> {
        return NSFetchRequest<CharityDetails>(entityName: "CharityDetails")
    }

    @NSManaged public var password2: String?
    @NSManaged public var username2: String?

}
