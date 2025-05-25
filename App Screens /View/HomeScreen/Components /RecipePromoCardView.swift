//
//  RecipePromoCardView.swift
//  EasyPan
//
//  Created by Hari's Mac on 25.05.2025.
//

import SwiftUI

struct RecipePromoCardView: View {
    let imageName: String
    let category: String
    let title: String
    let subtitle: String

    var body: some View {
        HStack(spacing: 12) {
            // Image Section
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 70, height: 70)
                .clipped()
                .cornerRadius(10)

            // Text Stack
            VStack(alignment: .leading, spacing: 4) {
                Text(category.uppercased())
                    .font(.caption)
                    .foregroundColor(.gray)

                Text(title)
                    .font(.headline)
                    .foregroundColor(.primary)

                Text(subtitle)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(2)
            }
            .frame(maxWidth: .infinity, alignment: .leading)

            // Arrow
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 2)
    }
}


#Preview {
   RecipePromoCardView(imageName: "Default", category: "Default", title: "Sample Title", subtitle:"Elevate your cooking with chef-inspired dishes.")
}
