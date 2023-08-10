//
//  Order.swift
//  Project
//
//  Created by Hager on 08/08/2023.
//

import Foundation

struct Order: Codable {
    var menuItems: [MenuItem]
    
    init(menuItems: [MenuItem] = []) {
        self.menuItems = menuItems
    }
}

