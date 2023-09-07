//
//  Item.swift
//  Delete
//
//  Created by Olibo moni on 07/09/2023.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
