//
//  DataManager.swift
//  ContactListView
//
//  Created by Елизавета Медведева on 28.09.2023.
//

import Foundation

final class DataManager {
    
    static let shared = DataManager()
    
    var names = ["Tom", "Shon", "Jhonn", "Sam", "Kate"]
    var surnames = ["Smith", "Cornel", "Henry", "Lin", "Jackson"]
    var numbers = ["+1 11 11", "+2 22 22", "+3 33 33", "+4 44 44", "+5 55 55"]
    var emails = ["1@em.com", "2@em.com", "3@em.com", "4@em.com", "5@em.com"]
    
    private init() {}
    
}
