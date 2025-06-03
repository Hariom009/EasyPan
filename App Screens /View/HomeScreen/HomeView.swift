//
//  HomeView.swift
//  EasyPan
//
//  Created by Hari's Mac on 25.05.2025.
//

import SwiftUI

struct HomeView: View {
    @State var searchtext: String = "Seach recipes, ingredients..."
    let recipelist: [Recipe] = [
        Recipe(
            title: "Oreo Milkshake",
            description: "A creamy blend of Oreos, milk, and ice cream. The ultimate dessert in a glass.",
            imageName: "Oreo milkshake",
            cookingTime: 5,
            difficulty: "Easy",
            category: "5-minute recipes",
            ingredients: [
                "6 Oreo cookies",
                "2 cups vanilla ice cream",
                "1 cup chilled milk",
                "1 tbsp sugar (optional)",
                "Whipped cream (for topping)",
                "Chocolate syrup (optional)"
            ],
            steps: [
                "Crush the Oreo cookies roughly.",
                "Add cookies to a blender.",
                "Pour in chilled milk.",
                "Add vanilla ice cream.",
                "Add sugar if extra sweetness is desired.",
                "Blend everything until smooth.",
                "Decorate glass with chocolate syrup.",
                "Pour the milkshake into the glass.",
                "Top with whipped cream and crushed Oreo.",
                "Serve immediately with a straw."
            ]
        ),
        
        Recipe(
            title: "Mango Milkshake",
            description: "Sweet, refreshing mango milkshake with the essence of summer.",
            imageName: "Mango milkshake",
            cookingTime: 5,
            difficulty: "Easy",
            category: "5-minute recipes",
            ingredients: [
                "1 ripe mango (peeled & chopped)",
                "1 cup chilled milk",
                "1 scoop vanilla ice cream",
                "1 tbsp sugar (optional)",
                "Cardamom powder (a pinch)",
                "Crushed ice (optional)"
            ],
            steps: [
                "Peel and chop the mango.",
                "Add mango to blender.",
                "Pour in chilled milk.",
                "Add sugar and cardamom powder.",
                "Blend until smooth and creamy.",
                "Add ice cream and blend briefly again.",
                "Check consistency and adjust milk if needed.",
                "Pour into a tall glass.",
                "Top with mango cubes or saffron (optional).",
                "Serve chilled and enjoy."
            ]
        ),
        
        Recipe(
            title: "Red Sauce Pasta",
            description: "A comforting Italian-style pasta in a tangy tomato-based sauce.",
            imageName: "Red sauce pasta",
            cookingTime: 20,
            difficulty: "Easy",
            category: "Easy Recipes",
            ingredients: [
                "200g penne pasta",
                "2 tbsp olive oil",
                "3 garlic cloves, minced",
                "1 onion, chopped",
                "2 tomatoes, pureed",
                "1 tsp chili flakes",
                "1 tsp oregano",
                "Salt to taste",
                "Basil leaves",
                "Grated cheese (optional)"
            ],
            steps: [
                "Boil the pasta until al dente.",
                "Heat olive oil in a pan.",
                "Sauté garlic and onion until translucent.",
                "Add tomato puree and cook well.",
                "Add chili flakes, oregano, and salt.",
                "Simmer the sauce for 5 minutes.",
                "Add boiled pasta and mix thoroughly.",
                "Garnish with basil leaves.",
                "Sprinkle grated cheese on top.",
                "Serve hot with garlic bread."
            ]
        ),
        
        Recipe(
            title: "Shahi Paneer",
            description: "A royal dish made with paneer, cream, and rich Indian spices.",
            imageName: "Shahi paneer",
            cookingTime: 40,
            difficulty: "Hard",
            category: "Professional Recipes",
            ingredients: [
                "200g paneer (cubed)",
                "2 onions, chopped",
                "2 tomatoes, pureed",
                "10 cashews",
                "2 tbsp cream",
                "1 tsp garam masala",
                "1 tsp ginger-garlic paste",
                "2 tbsp oil",
                "1 tsp turmeric & chili powder",
                "Salt to taste"
            ],
            steps: [
                "Soak cashews in warm water.",
                "Grind them into a paste.",
                "Sauté onions till golden in oil.",
                "Add ginger-garlic paste and cook.",
                "Pour tomato puree and cook till thick.",
                "Add cashew paste and mix well.",
                "Add all spices and salt.",
                "Stir in cream and mix.",
                "Add paneer cubes and cook for 5 minutes.",
                "Serve hot with naan or rice."
            ]
        ),
        
        Recipe(
            title: "Sphagetti",
            description: "A classic Italian noodle dish, easy and versatile.",
            imageName: "Sphagetti",
            cookingTime: 25,
            difficulty: "Medium",
            category: "Easy Recipes",
            ingredients: [
                "200g spaghetti",
                "2 tbsp olive oil",
                "2 garlic cloves",
                "1 cup tomato sauce",
                "1 tsp oregano",
                "Salt and pepper to taste",
                "Chili flakes (optional)",
                "Grated cheese",
                "Fresh basil",
                "1 small onion (chopped)"
            ],
            steps: [
                "Boil spaghetti until tender.",
                "Drain and set aside.",
                "Sauté garlic and onion in olive oil.",
                "Add tomato sauce and seasonings.",
                "Simmer sauce for 10 minutes.",
                "Add boiled spaghetti and mix.",
                "Top with cheese and basil.",
                "Drizzle olive oil on top.",
                "Toss well and serve.",
                "Pair with a side salad."
            ]
        ),
        
        Recipe(
            title: "Black Tea",
            description: "A traditional, energizing brew to kickstart your day.",
            imageName: "black tea",
            cookingTime: 5,
            difficulty: "Easy",
            category: "5-minute recipes",
            ingredients: [
                "1 cup water",
                "1 tsp black tea leaves",
                "1 tsp sugar (optional)",
                "Lemon slice (optional)",
                "Mint leaves (optional)"
            ],
            steps: [
                "Boil water in a pan.",
                "Add black tea leaves.",
                "Simmer for 2–3 minutes.",
                "Strain into a cup.",
                "Add sugar to taste.",
                "Optionally add lemon.",
                "Garnish with mint leaves.",
                "Stir gently.",
                "Serve immediately.",
                "Enjoy while hot."
            ]
        ),
        
        Recipe(
            title: "Capuccino",
            description: "A rich, frothy coffee that energizes and delights.",
            imageName: "capucchino",
            cookingTime: 3,
            difficulty: "Easy",
            category: "5-minute recipes",
            ingredients: [
                "2 tsp instant coffee",
                "1/2 cup milk",
                "1/2 cup hot water",
                "1 tsp sugar",
                "Cocoa powder (for dusting)"
            ],
            steps: [
                "Mix coffee, sugar, and hot water.",
                "Beat till frothy.",
                "Boil milk until steamy.",
                "Froth milk using whisk or frother.",
                "Pour coffee into a cup.",
                "Gently add frothed milk.",
                "Dust with cocoa powder.",
                "Serve immediately.",
                "Enjoy the aroma.",
                "Sip slowly and smile."
            ]
        ),
        
        Recipe(
            title: "Lemonade",
            description: "A zingy, citrusy refresher perfect for hot days.",
            imageName: "Lemonade",
            cookingTime: 2,
            difficulty: "Easy",
            category: "5-minute recipes",
            ingredients: [
                "1 lemon (juiced)",
                "1 cup cold water",
                "1 tbsp sugar",
                "Pinch of salt",
                "Ice cubes",
                "Mint leaves (optional)"
            ],
            steps: [
                "Squeeze lemon juice into a glass.",
                "Add sugar and salt.",
                "Pour cold water.",
                "Stir well until sugar dissolves.",
                "Add ice cubes.",
                "Garnish with mint.",
                "Taste and adjust sweetness.",
                "Serve chilled.",
                "Add lemon slice on rim.",
                "Enjoy your cool escape!"
            ]
        ),
        
        Recipe(
            title: "White Sauce Pasta",
            description: "Silky, creamy pasta comforted in white sauce.",
            imageName: "White sauce pasta",
            cookingTime: 25,
            difficulty: "Easy",
            category: "Easy Recipes",
            ingredients: [
                "200g penne pasta",
                "1 tbsp butter",
                "1 tbsp flour",
                "1.5 cups milk",
                "Salt and pepper",
                "Oregano & chili flakes",
                "Grated cheese",
                "Boiled corn (optional)",
                "Broccoli (optional)",
                "Olive oil"
            ],
            steps: [
                "Boil pasta and drain.",
                "In another pan, melt butter.",
                "Add flour and sauté.",
                "Gradually add milk, stirring.",
                "Cook till sauce thickens.",
                "Add salt, pepper, oregano.",
                "Stir in cheese.",
                "Add veggies and pasta.",
                "Mix until coated.",
                "Serve hot with extra cheese."
            ]
        )
    ]
    @State private var path: [Recipe] = []
    var body: some View {
        NavigationStack(path: $path){
            ScrollView{
                SearchBarView(seachtext: searchtext)
                SectionHeading(text: "Most Popular Recipes")
                ScrollView(.horizontal){
                    HStack{
                        ForEach(recipelist, id: \.self){ recipe in
                            RecipeCardView(recipe: recipe)
                                .onTapGesture {
                                    path.append(recipe)
                                }
                        }
                    }
                }
                .padding(5)
                .scrollIndicators(.hidden)
                .scrollContentBackground(.hidden)
                HStack{
                    Text("Discover More")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Spacer()
                }
                .padding(4)
                RecipePromoCardView(imageName: "capucchino", category: "5-minute recipes", title: "QuickBite", subtitle: "Perfect for busy mornings")
                RecipePromoCardView(imageName: "Shahi paneer", category: "Professional Recipes", title: "Gourmet Delights", subtitle: "Elevate your cooking skills with chef-inspired dishes")
                RecipePromoCardView(imageName: "Red sauce pasta", category: "Easy Recipes", title: "One-Pan Magic", subtitle: " Quick dishes packed with taste")
            }
            .navigationTitle("EasyPan")
            .navigationBarTitleDisplayMode(.large)
            .navigationDestination(for: Recipe.self) { recipe in
                RecipeView(recipe: recipe)
            }
            .toolbar{
                ToolbarItem(placement: .bottomBar){
                    HStack(spacing: 50){
                        Button{
                            // Home View...
                        }label: {
                            VStack{
                                Image(systemName: "house")
                                Text("Home")
                                    .font(.caption2)
                            }
                            .foregroundStyle(.black)
                        }
                        Button{
                            // Saved Recipe View...
                        }label: {
                            VStack{
                                Image(systemName: "bookmark")
                                Text("saved")
                                    .font(.caption2)
                            }
                            .foregroundStyle(.black)
                        }
                        Button{
                            // Search View...
                        }label: {
                            VStack{
                                Image(systemName: "magnifyingglass")
                                Text("search")
                                    .font(.caption2)
                            }
                            .foregroundStyle(.black)
                        }
                        Button{
                            // Profile View...
                        }label: {
                            VStack{
                                Image(systemName: "person")
                                Text("profile")
                                    .font(.caption2)
                            }
                            .foregroundStyle(.black)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
