//
//  housePost.swift
//  StudentHousingApp
//
//  Created by Mayra Serrato on 2/26/20.
//  Copyright © 2020 Capstone Project. All rights reserved.
//

import SwiftUI

struct housePost: Hashable, Codable, Identifiable {
    var id:Int
    var name:String
    var imageName:String
    var category:Category
    var description:String
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case apartment = "Apartment"
        case house = "House"
    }
}
