//
//  RecipeCategoryListView.swift
//  EasyPan
//
//  Created by Hari's Mac on 31.05.2025.
//

import SwiftUI

struct RecipeCategoryListView: View {
    let category: String
    let recipes: [Recipe]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(recipes) { recipe in
                        RecipeListItemView(recipe: recipe)
                            .onTapGesture {
                                // Handle recipe tap - navigate to recipe detail
                            }
                    }
                }
                .padding()
            }
            .navigationTitle(category)
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct RecipeListItemView: View {
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
                    Label(recipe.cookingTime, systemImage: "clock")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    Label(recipe.difficulty, systemImage: "star.fill")
                        .font(.caption)
                        .foregroundColor(.orange)
                }
            }
            
            Spacer()
            
            // Arrow indicator
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
                .font(.caption)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(16)
        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 2)
    }
}

// Recipe Model
struct Recipe: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let imageName: String
    let cookingTime: String
    let difficulty: String
    let category: String
}

// Sample data for different categories
extension RecipeCategoryListView {
    static func getSampleRecipes(for category: String) -> [Recipe] {
        switch category {
        case "5-minute recipes":
            return [
                Recipe(title: "Quick Cappuccino", description: "Perfect morning coffee with rich foam", imageName: "capucchino", cookingTime: "3 mins", difficulty: "Easy", category: category),
                Recipe(title: "Instant Lemonade", description: "Refreshing citrus drink for hot days", imageName: "Lemonade", cookingTime: "2 mins", difficulty: "Easy", category: category),
                Recipe(title: "Black Tea", description: "Classic tea with perfect brewing", imageName: "black tea", cookingTime: "5 mins", difficulty: "Easy", category: category),
                Recipe(title: "Oreo Milkshake", description: "Creamy chocolate cookie milkshake", imageName: "Oreo milkshake", cookingTime: "4 mins", difficulty: "Easy", category: category)
            ]
        case "Professional Recipes":
            return [
                Recipe(title: "Shahi Paneer", description: "Rich and creamy royal paneer curry", imageName: "Shahi paneer", cookingTime: "45 mins", difficulty: "Hard", category: category),
                Recipe(title: "Gourmet Spaghetti", description: "Italian pasta with authentic flavors", imageName: "Sphagetti", cookingTime: "35 mins", difficulty: "Medium", category: category),
                Recipe(title: "Mango Milkshake Deluxe", description: "Premium mango shake with exotic spices", imageName: "Mango milkshake", cookingTime: "15 mins", difficulty: "Medium", category: category)
            ]
        case "Easy Recipes":
            return [
                Recipe(title: "Red Sauce Pasta", description: "Simple and delicious tomato pasta", imageName: "Red sauce pasta", cookingTime: "20 mins", difficulty: "Easy", category: category),
                Recipe(title: "White Sauce Pasta", description: "Creamy and comforting pasta dish", imageName: "White sauce pasta", cookingTime: "25 mins", difficulty: "Easy", category: category),
                Recipe(title: "Basic Spaghetti", description: "Classic spaghetti for beginners", imageName: "Sphagetti", cookingTime: "18 mins", difficulty: "Easy", category: category)
            ]
        default:
            return []
        }
    }
}

#Preview {
    RecipeCategoryListView(
        category: "5-minute recipes",
        recipes: RecipeCategoryListView.getSampleRecipes(for: "5-minute recipes")
    )
}

