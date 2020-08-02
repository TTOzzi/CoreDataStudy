//
//  ContactInfo+CoreDataProperties.swift
//  CoreDataSample
//
//  Created by TTOzzi on 2020/08/02.
//  Copyright © 2020 TTOzzi. All rights reserved.
//
//

import Foundation
import CoreData

@objc public enum ContactType: Int16 {
    case mobile, tel
}

extension ContactInfo {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ContactInfo> {
        return NSFetchRequest<ContactInfo>(entityName: "ContactInfo")
    }

    @NSManaged public var type: ContactType
    @NSManaged public var contact: String?
    @NSManaged public var owner: Person?

}
