//
//  ListItemView.swift
//  EasyPan
//
//  Created by Hari's Mac on 02.06.2025.
//

import SwiftUI

struct CategoryListItemView: View {
    let recipe: Recipe
    
    var body: some View {
        HStack(spacing: 12) {
            // Recipe Image
            Image(recipe.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipped()
                .cornerRadius(12)
            
            // Recipe Details
            VStack(alignment: .leading, spacing: 4) {
                Text(recipe.title)
                    .font(.headline)
                    .foregroundColor(.primary)
                
                Text(recipe.description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(2)
                
                HStack {
                    Label("\(String(recipe.cookingTime))- min", systemImage: "clock")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    Label(recipe.difficulty, systemImage: "star.fill")
                        .font(.caption)
                        .foregroundColor(.orange)
                }
            }
            
            Spacer()

        }
        .padding()
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 2)
    }
}
