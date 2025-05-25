//
//  RecipeExpandCard.swift
//  EasyPan
//
//  Created by Hari's Mac on 25.05.2025.
//

import SwiftUI

struct RecipeExpandCard: View {
    let imageName: String
        let title: String
        let time: String

        var body: some View {
            ZStack(alignment: .bottomLeading) {
                // Background Image
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 250, height: 150)
                    .clipped()
                    .cornerRadius(20)

                // Overlay with title and time
                VStack(alignment: .leading, spacing: 4) {
                    Text(title)
                        .font(.headline)
                        .foregroundColor(.white)
                        .bold()

                    HStack(spacing: 4) {
                        Image(systemName: "clock")
                            .foregroundColor(.white)
                            .font(.subheadline)
                        Text(time)
                            .font(.subheadline)
                            .foregroundColor(.white.opacity(0.9))
                    }
                }
                .padding()
                .background(
                    // Gradient if you want a slight fade effect
                    LinearGradient(
                        gradient: Gradient(colors: [Color.black.opacity(0.6), Color.clear]),
                        startPoint: .bottom,
                        endPoint: .top
                    )
                    .frame(height: 100)
                )
            }
            .frame(width: 250, height: 150)
            .shadow(radius: 5)
        }
}

#Preview {
    RecipeCardView(imageName: "Red sauce pasta", title: "Pasta", time: "15 mins")
}
