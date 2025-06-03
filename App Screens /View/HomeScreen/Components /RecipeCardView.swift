//
//  ImageView.swift
//  EasyPan
//
//  Created by Hari's Mac on 25.05.2025.
//

import SwiftUI

struct RecipeCardView: View {
    let recipe:Recipe


    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(recipe.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 200)
                .clipped()
            
            // Gradient overlay
            LinearGradient(
                gradient: Gradient(colors: [Color.black.opacity(0.7), Color.clear]),
                startPoint: .bottom,
                endPoint: .top
            )
            .frame(height: 80)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(recipe.title)
                    .font(.title3)
                    .bold()
                    .foregroundColor(.white)
                Text("Ready in \(recipe.cookingTime)")
                    .font(.subheadline)
                    .foregroundColor(.white.opacity(0.8))
            }
            .padding()
        }
        .frame(width: 300, height: 200)
        .cornerRadius(20)
        .shadow(radius: 5)
    }
}


#Preview {
    RecipeCardView(recipe: Recipe(title: "Sample", description: "Sample data", imageName: "default", cookingTime: 10, difficulty: "medium", category: "5-minute meals", ingredients: [""], steps: [""]))
}
