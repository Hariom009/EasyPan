//
//  Recipe.swift
//  EasyPan
//
//  Created by Hari's Mac on 02.06.2025.
//

import Foundation
import SwiftUI

struct Recipe: Identifiable,Hashable{
    let id = UUID()
    let title: String
    let description: String
    let imageName: String
    let cookingTime: Int
    let difficulty: String
    let category: String
    let ingredients: [String]
    let steps: [String]
}
