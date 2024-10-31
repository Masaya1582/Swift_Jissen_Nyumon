//
//  HomeModel.swift
//  Swift_Jissen_Nyumon
//
//  Created by MasayaNakakuki on 2024/10/31.
//

import Foundation

struct HomeModel: Codable {
    let name: String
    let age: Int
    let height: Double
    let gender: Gender
}

enum Gender: String {
    case male
    case female
}
