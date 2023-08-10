//
//  ResponseModels.swift
//  Project
//
//  Created by Hager on 08/08/2023.
//

import Foundation

struct MenuResponse: Codable {
    let items: [MenuItem]
    
    enum CodingKeys: String, CodingKey {
        case items = "items"
    }  
    
}

struct CategoriesResponse: Codable {
    let categories: [String]
    /*enum CodingKeys: String, CodingKey {
        case categries 
    }*/
}

struct OrderResponse: Codable {
    let prepTime: Int
    enum CodingKeys: String, CodingKey {
        case prepTime = "preparation_time"
    }
}

