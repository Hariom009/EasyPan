// Sample data for different categories
extension CategoryView {
    static func getSampleRecipes(for category: String) -> [Recipe] {
        switch category {
        case "5-minute recipes":
            return [
                Recipe(
                    title: "Quick Cappuccino",
                    description: "Perfect morning coffee with rich foam",
                    imageName: "capucchino",
                    cookingTime: 3,
                    difficulty: "Easy",
                    category: category,
                    ingredients: ["1 cup milk", "1 shot espresso", "Sugar (optional)", "Cocoa powder or cinnamon for garnish"],
                    steps: [
                        "Boil water for your espresso if not using a machine.",
                        "Brew a strong shot of espresso or instant coffee.",
                        "Heat milk in a pan or microwave until warm.",
                        "Use a frother or whisk to create foam from the milk.",
                        "Add sugar to espresso if desired and stir.",
                        "Pour the espresso into a cup.",
                        "Slowly add the warm milk over the espresso.",
                        "Spoon frothy foam on top of the drink.",
                        "Sprinkle with cocoa powder or cinnamon.",
                        "Serve immediately and enjoy while hot."
                    ]
                ),
                Recipe(
                    title: "Instant Lemonade",
                    description: "Refreshing citrus drink for hot days",
                    imageName: "Lemonade",
                    cookingTime: 2,
                    difficulty: "Easy",
                    category: category,
                    ingredients: ["1 lemon", "2 tsp sugar", "1 cup chilled water", "Ice cubes", "Mint (optional)"],
                    steps: [
                        "Wash and roll the lemon to soften.",
                        "Cut lemon in half and squeeze juice into a glass.",
                        "Remove any seeds using a strainer.",
                        "Add sugar to the lemon juice.",
                        "Mix until sugar dissolves completely.",
                        "Add a pinch of salt or black salt (optional).",
                        "Pour in chilled water.",
                        "Stir well to combine flavors.",
                        "Drop in a few ice cubes.",
                        "Garnish with mint or a lemon slice and serve."
                    ]
                ),
                Recipe(
                    title: "Black Tea",
                    description: "Classic tea with perfect brewing",
                    imageName: "black tea",
                    cookingTime: 5,
                    difficulty: "Easy",
                    category: category,
                    ingredients: ["1 cup water", "1 tsp tea leaves or 1 tea bag", "Sugar (optional)", "Lemon slice (optional)"],
                    steps: [
                        "Boil 1 cup of water in a kettle or saucepan.",
                        "Add tea leaves or tea bag to the water.",
                        "Let it steep for 3–5 minutes based on strength.",
                        "Turn off the heat once desired brew is reached.",
                        "Add sugar or honey to taste if desired.",
                        "Strain the tea into a serving cup.",
                        "Stir gently and let it cool for a minute.",
                        "Add a slice of lemon for a citrus kick (optional).",
                        "Enjoy your tea hot or slightly cooled.",
                        "Perfect with biscuits or morning solitude."
                    ]
                ),
                Recipe(
                    title: "Oreo Milkshake",
                    description: "Creamy chocolate cookie milkshake",
                    imageName: "Oreo milkshake",
                    cookingTime: 4,
                    difficulty: "Easy",
                    category: category,
                    ingredients: ["4-5 Oreo cookies", "1 cup milk", "2 scoops vanilla ice cream", "Sugar (optional)", "Whipped cream for topping"],
                    steps: [
                        "Gather all ingredients and set aside blender.",
                        "Break Oreos into halves or quarters.",
                        "Add Oreos to the blender.",
                        "Pour in chilled milk.",
                        "Add scoops of vanilla ice cream.",
                        "Blend for 30–60 seconds until smooth.",
                        "Taste and add sugar if needed.",
                        "Blend again for a few seconds if adjusted.",
                        "Pour into a tall glass.",
                        "Top with whipped cream, Oreo crumbs or chocolate drizzle."
                    ]
                )
            ]
        case "Professional Recipes":
            return [
                Recipe(
                    title: "Shahi Paneer",
                    description: "Rich and creamy royal paneer curry",
                    imageName: "Shahi paneer",
                    cookingTime: 45,
                    difficulty: "Hard",
                    category: category,
                    ingredients: ["200g paneer", "2 onions", "1/2 cup tomato puree", "1/4 cup cream", "2 tbsp cashew paste", "Spices (turmeric, chili, garam masala)", "Salt", "Oil"],
                    steps: [
                        "Soak cashews in warm water for 15 minutes.",
                        "Grind soaked cashews and onions into a smooth paste.",
                        "Heat oil in a pan and sauté the paste until golden.",
                        "Add ginger-garlic paste and cook for 2 minutes.",
                        "Stir in tomato puree and cook until oil separates.",
                        "Add spices: turmeric, garam masala, red chili.",
                        "Mix in cream and simmer for 2 minutes.",
                        "Add paneer cubes and gently stir to coat.",
                        "Simmer for 5–7 minutes on low heat.",
                        "Garnish with coriander and serve with naan."
                    ]
                ),
                Recipe(
                    title: "Gourmet Spaghetti",
                    description: "Italian pasta with authentic flavors",
                    imageName: "Sphagetti",
                    cookingTime: 35,
                    difficulty: "Medium",
                    category: category,
                    ingredients: ["200g spaghetti", "2 tbsp olive oil", "3 garlic cloves", "1 cup cherry tomatoes", "Basil leaves", "Salt", "Black pepper", "Parmesan cheese"],
                    steps: [
                        "Boil a large pot of salted water.",
                        "Add spaghetti and cook until al dente.",
                        "Drain and save some pasta water.",
                        "Heat olive oil in a pan.",
                        "Sauté minced garlic until golden.",
                        "Add halved cherry tomatoes and cook down.",
                        "Add a splash of pasta water to make sauce.",
                        "Toss in the spaghetti and coat with sauce.",
                        "Top with torn fresh basil and parmesan.",
                        "Serve with cracked pepper and drizzle of oil."
                    ]
                ),
                Recipe(
                    title: "Mango Milkshake Deluxe",
                    description: "Premium mango shake with exotic spices",
                    imageName: "Mango milkshake",
                    cookingTime: 15,
                    difficulty: "Medium",
                    category: category,
                    ingredients: ["1 ripe mango", "1 cup milk", "2 scoops vanilla ice cream", "Cardamom powder", "Honey", "Saffron strands", "Pistachios for garnish"],
                    steps: [
                        "Peel and dice ripe mango into small cubes.",
                        "Chill milk and ice cream ahead of time.",
                        "Add mango pieces to blender.",
                        "Pour in cold milk.",
                        "Add vanilla ice cream.",
                        "Sprinkle cardamom powder (optional).",
                        "Blend until completely smooth.",
                        "Taste and adjust sweetness with honey or sugar.",
                        "Pour into tall glass.",
                        "Garnish with pistachios and saffron strands."
                    ]
                )
            ]
        default:
            return []
        }
    }
}
