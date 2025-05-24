//
//  HomeView.swift
//  EasyPan
//
//  Created by Hari's Mac on 25.05.2025.
//

import SwiftUI

struct HomeView: View {
    @State var searchtext: String = "Seach recipes, ingredients..."
    var body: some View {
        ScrollView{
            SearchBarView(seachtext: searchtext)
            VStack{
                HStack{
                    Text("Most Popular Recipes")
                        .font(.title2)
                        .fontWeight(.semibold)
                    Spacer()
                }
                .padding(4)
                
            }
        }
    }
}

#Preview {
    HomeView()
}
