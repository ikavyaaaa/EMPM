//
//  Item.swift
//  EMPM
//
//  Created by Kavya Krishna K. on 10/04/25.
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
