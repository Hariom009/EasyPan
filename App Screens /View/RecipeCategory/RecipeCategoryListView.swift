//
//  RecipeCategoryListView.swift
//  EasyPan
//
//  Created by Hari's Mac on 31.05.2025.
//

import SwiftUI

struct CategoryView: View {
    let category: String
    let recipes: [Recipe]
    
    @State private var selectedRecipe: Recipe? = nil
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(recipes) { recipe in
                        NavigationLink(
                            destination: RecipeView(recipe: recipe),
                            tag: recipe,
                            selection: $selectedRecipe
                        ) {
                            CategoryListItemView(recipe: recipe)
                                .contentShape(Rectangle()) // So the whole row is tappable
                        }
                        .buttonStyle(PlainButtonStyle()) // Optional: avoid blue highlight
                        .onTapGesture {
                            selectedRecipe = recipe
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

#Preview {
    CategoryView(
        category: "5-minute recipes",
        recipes: CategoryView.getSampleRecipes(for: "5-minute recipes")
    )
}

