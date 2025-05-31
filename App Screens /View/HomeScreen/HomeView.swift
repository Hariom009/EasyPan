//
//  HomeView.swift
//  EasyPan
//
//  Created by Hari's Mac on 25.05.2025.
//

import SwiftUI

struct HomeView: View {
    @State var searchtext: String = "Seach recipes, ingredients..."
    let recipelist = ["Oreo milkshake","Mango milkshake","Red sauce pasta","Shahi paneer","Sphagetti","black tea","capucchino", "Lemonade","White sauce pasta"]
    var body: some View {
        NavigationView {
            ScrollView{
                SearchBarView(seachtext: searchtext)
                SectionHeading(text: "Most Popular Recipes")
                ScrollView(.horizontal){
                    HStack{
                        ForEach(recipelist, id: \.self){ recipe in
                            //  ImageView(text: recipe, time: 20)
                            RecipeCardView(imageName: recipe, title: recipe, time: "20")
                        }
                    }
                }
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
