//
//  UserData.swift
//  E-Waste APP
//
//  Created by Anandika Carthikeyan on 9/2/23.
//

import Foundation

struct UserData: Identifiable, Codable {
    let id = UUID()
    var ParticipantName: String
    var PhysicalCity: String
    var Fees: Int
    var Excluded: [String]
    
    // --- here, excluding id
    enum CodingKeys: String, CodingKey {
        case ParticipantName,PhysicalCity,Fees,Excluded
    }
}


