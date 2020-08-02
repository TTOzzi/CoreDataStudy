//
//  Person+CoreDataProperties.swift
//  CoreDataSample
//
//  Created by TTOzzi on 2020/08/02.
//  Copyright © 2020 TTOzzi. All rights reserved.
//
//

import Foundation
import CoreData


extension Person {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: "Person")
    }

    @NSManaged public var birth: Date?
    @NSManaged public var contacts: NSSet?

}

// MARK: Generated accessors for contacts
extension Person {

    @objc(addContactsObject:)
    @NSManaged public func addToContacts(_ value: ContactInfo)

    @objc(removeContactsObject:)
    @NSManaged public func removeFromContacts(_ value: ContactInfo)

    @objc(addContacts:)
    @NSManaged public func addToContacts(_ values: NSSet)

    @objc(removeContacts:)
    @NSManaged public func removeFromContacts(_ values: NSSet)

}
