//
//  File.swift
//  CupCakeCafe
//
//  Created by Silentmode Sdn Bhd on 14/05/2024.
//

import Foundation
import SwiftUI
import Observation

@Observable
class User: Codable {
    enum CodingKeys: String, CodingKey {
        case _name = "name"
    }
    var name = "Taylor"
}
